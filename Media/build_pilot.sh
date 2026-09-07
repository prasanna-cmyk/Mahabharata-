#!/bin/bash
# Mahabharata Kannada 4K pilot — I1 group (5 scenes)
# 3840x2160, 24fps, Ken Burns per scene motion notes, audio = recorded narration
set -e
FF=$(python3 -c "import imageio_ffmpeg; print(imageio_ffmpeg.get_ffmpeg_exe())")
cd "$(dirname "$0")/.."
rm -f Media/Segments/*.mp4
mkdir -p Media/Segments

get_dur() {
  "$FF" -i "$1" 2>&1 | grep -oE 'Duration: [0-9]+:[0-9]+:[0-9]+' | head -1 | awk -F'[:,]' '{print ($2*3600)+($3*60)+$4}'
}

declare -a SCENES=("I1-S01|zin" "I1-S02|panr" "I1-S03|drift" "I1-S04|lock" "I1-S05|zin2")

for entry in "${SCENES[@]}"; do
  ID="${entry%%|*}"; MOV="${entry##*|}"
  ADUR=$(get_dur "Media/Audio/$ID.mp3")
  LEAD=1.0; TAIL=2.0
  TOTAL=$(python3 -c "print($ADUR + $LEAD + $TAIL)")
  FRAMES=$(python3 -c "print(int($TOTAL * 24))")
  echo "=== $ID motion=$MOV audio=${ADUR}s total=${TOTAL}s frames=$FRAMES"
  case "$MOV" in
    zin)   ZF="1.0 + 0.08*on/${FRAMES}" ;;
    panr)  ZF="1.12" ; PAN="if(gte(on,0),(on/${FRAMES})*120,0)" ;;
    drift) ZF="1.06" ; PAN="if(gte(on,0),(on/${FRAMES})*60,0)" ;;
    lock)  ZF="1.0" ;;
    zin2)  ZF="1.10 + 0.02*on/${FRAMES}" ;;
  esac
  [ -z "$PAN" ] && PAN="0"
  "$FF" -y -loglevel error -loop 1 -i "Media/Keyframes4K/$ID.jpg" -i "Media/Audio/$ID.mp3" \
    -filter_complex "[0:v]scale=3840:2160:flags=lanczos,zoompan=z='${ZF}':x='(iw-iw/zoom)/2 + ${PAN}':y='(ih-ih/zoom)/2':d=${FRAMES}:s=3840x2160:fps=24,setsar=1,format=yuv420p[v];[1:a]adelay=1000|1000,apad=pad_dur=2.0,aresample=48000[a]" \
    -map "[v]" -map "[a]" -t "$TOTAL" \
    -c:v libx264 -preset ultrafast -crf 22 -pix_fmt yuv420p \
    -c:a aac -b:a 192k -ar 48000 -shortest \
    "Media/Segments/$ID.mp4"
done

printf "file 'Segments/I1-S01.mp4'\nfile 'Segments/I1-S02.mp4'\nfile 'Segments/I1-S03.mp4'\nfile 'Segments/I1-S04.mp4'\nfile 'Segments/I1-S05.mp4'\n" > Media/concat.txt
"$FF" -y -loglevel error -f concat -safe 0 -i Media/concat.txt -c copy Media/Video/I1_ultrafast_master.mp4
FF2=$FF
"$FF2" -y -loglevel error -i Media/Video/I1_ultrafast_master.mp4 -c:v libx264 -preset medium -crf 26 -pix_fmt yuv420p -c:a copy -movflags +faststart Media/Video/Mahabharata_Kannada_4K_Pilot_I1.mp4
rm -f Media/Video/I1_ultrafast_master.mp4 Media/Segments/*.mp4
echo "=== DONE ==="
"$FF" -i Media/Video/Mahabharata_Kannada_4K_Pilot_I1.mp4 2>&1 | grep -E "Duration|Stream" | head -3
ls -la Media/Video/

# Existing package audit — 6 September 2026

The existing 39-episode package is an outline with one substantially authored pilot. Its claim of complete production-ready narration is unsupported. This audit did not modify that package.

## Confirmed findings

1. **Episodes 02–39 use generated filler instead of full narrative.** The generator `Mahabharata_Kannada_YouTube/02_ARCHIVE_DO_NOT_USE/Development_Files/build_complete_adiparva_package.py`, lines 177–237, expands eight topic labels by repeating their clauses, the preceding and following labels, and generic reflections. Lines 239–242 select this for every episode except 01. No chapter body is supplied to that function. The same paragraph beginning `ಪಾತ್ರವನ್ನು ಹೊಗಳಲು ಅಥವಾ ದೂಷಿಸಲು ಆತುರಪಡದೆ` occurs eight times in each of those 38 episodes: 304 repetitions. EP23, EP31 and EP39 demonstrate this directly.
2. **Coverage files certify label allocation, not source coverage.** Generator lines 384–407 copy the eight topics per episode and expand chapter-number ranges. The assertion checks integers 1–237; it does not compare script passages with the book. Neither coverage CSV includes source passage, verse, source line, omission status, or evidence of narrative coverage.
3. **The supplied edition contradicts the archery headline.** Volume 3 source TXT lines 1034–1050 says Arjuna sees the bird's HEAD and severs that head. Existing EP23 title, topic and image prompts use its EYE. Volume 3 lines 1092–1094 specifies TEN arrows in the crocodile rescue. Lines 1128–1150 state the actual Brahmashiras restrictions, omitted from the existing script despite its topic saying “teaching and warning.” These details should follow this edition, with OCR confirmation where required.
4. **The 7,020 image rows do not represent 7,020 story beats.** Every sampled CSV (01, 02, 23, 30, 31, 39) contains 180 rows but only eight unique narrative-focus labels: first and last are each repeated 36 times; the others 18 times. A composition list and cycling light descriptions change while the narrative action remains unspecified. A scene changes from storm light to pre-dawn to sunrise in successive six-second rows. The prompt includes an entire episode anchor that can introduce future characters into the present scene.
5. **Pilot picture timing does not match pilot narration.** EP01 has eleven custom blocks; its image CSV uses ten uniform 1:48 blocks. At 02:15 the narration enters Naimisha, but the CSV continues the invocation until 03:36. This is an observable edit mismatch, not a stylistic preference.
6. **Exact 18-minute runtime is unverified.** No voice recording or measured read supports the timing. In EP02 the imposed 1:48 blocks range from about 53 to 131 whitespace-delimited words per minute. The instruction to use only +/-3% time stretch cannot normalize these differences. Natural performance, pauses and a measured edit should determine timing.
7. **The ZIP contains four volumes, despite its Volume-3 filename.** Members are `MAHABHARATA-1-AADIPARVA-_djvu (1).txt`, `MAHABHARATA-2-AADIPARVA_djvu.txt`, `MAHABHARATA-3-AADIPARVA_djvu.txt`, and `MAHABHARATA-4-AADIPARVA_djvu.txt`. The existing README explicitly excludes the Sabha material inside volume 4. That exclusion cannot support the present request to consider everything in the supplied book archive.
8. **Visual continuity is aspirational.** The generic lock asks for consistent age, face, clothing and weapons without defining most principal character designs, life stages, scene entrances or prop states. It extends contemporary Madhva forehead treatment to every epic rishi without labeling that as a devotional art direction choice. An adaptation should distinguish source statements, theological commentary, and invented visual decisions.

## Safe reuse

- The four-source filenames, hashes and chapter-to-episode allocation can be reused as navigation aids after current checks.
- Eight-topic episode outlines offer an initial index, subject to source correction and additional incidents.
- Episode 01 contains usable narration passages, but its source completeness, implied theological stance and all picture timing require review.
- The basic 3840×2160 / 16:9 delivery intention is reusable; it is not evidence that generated images or a finished film are 4K.
- Do not reuse EP02–39 narration, uniform timing, or image CSVs as finished production assets.

## Required replacement approach

Write actual events, character motives and consequences in Kannada; use source line references on every scene; keep commentary visibly distinct; give each image prompt one observable action with explicit cast, location and continuity. Preserve a separate source-companion register for genealogy, invocations, front matter, enumerations and interpretation that cannot be fully spoken in a short episode. Do not claim exhaustive verse coverage until that register is independently reconciled.

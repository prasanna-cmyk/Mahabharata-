> Earlier source-repair audit, retained as history. Matching original scans are now available for all4 volumes; previous requests to obtain them are superseded. Adi117 hundred-name scan verification is complete. Other page-order and interpretation checks remain open. See SCAN_SOURCE_MANIFEST.json, correction ledgers and Remaining_Detail_Review.csv for current status.

# Source status and exact repair locations

The supplied ZIP contains four OCR text files only. It contains the entire numbered Adiparva1–237 of this edition and the beginning of Sabhaparva1–24. The fourth file ends after Jarasandha's death, the release of the kings and the return to Indraprastha. It does not contain the completed Rajasuya, Shishupala episode, dice-game narrative or later parvas. The Volume4 introductory essay discusses a later dice passage; that essay does not supply the later narrative.

The four extracted file hashes match the existing source manifest. The261-chapter register establishes that chapter headings are present. A linked chapter, a retained source paragraph, or a mapped scene does not establish that every detail has been turned into a clean production script.

## Known raw page-order errors

Printed page numbers below are the numbers visible in the OCR headers, not PDF page indices. The raw line numbers are1-based and refer to the unmodified decoded ZIP text. Candidate sequences below were reconstructed from page-header and colophon evidence; they remain unverified against page images.

### Volume1, Adiparva33–36: printed pages336–355

The raw order runs336,341–344,337–340,349–352,345–348,353–355. This interleaves FOUR chapters, not only33–35. A simple next-heading split is incorrect here.

| Chapter | Candidate reading sequence in raw lines | Printed pages |
|---|---|---|
| Adi33 |19022–19058, then19241–19397|336,337–340|
| Adi34 |19398–19418, then19059–19169|340,341–343|
| Adi35 |19170–19240, then19587–19766, then19419–19437|343–344,345–348,349|
| Adi36 |19438–19586, then19767–19871|349–352,353–355|

Evidence: header33 at19022; end34 before header35 at19170; printed337 appears at19241 after printed344 at19195; end33 at19394; header34 at19398; printed349 at19419 then header36 at19438; printed345 appears later at19587. The story fragments also match the reordering: Elapatra's words; Vasuki protecting Jaratkaru; Parikshit's offence; Shringi's curse and Shamika's reaction.

**Minimum scan request:** Volume1 printed pages336–355, preferably334–357 for overlap. The source register now includes ordered candidate spans and marks all four chapters provisional.

### Repeated page pairs and overlapping chapter starts

| File / chapters affected | Raw evidence | Printed pages to supply |
|---|---|---|
| V1 Adi12–13 |Chapter13 headings12812 and12881; headers202–203 then202 recur|201–204|
| V1 Adi32 |Headers330–331 at18653/18704 and18751/18809 repeat|329–335|
| V2 Adi105–106 |Chapter106 headings20654 and20744; raw order437,436,437,438|435–440|
| V2 Adi121–122 |Chapter122 headings30817 and30900; raw order655,654,655,656|653–658|
| V3 Adi173–174 |Chapter174 headings20104 and20191; repeated446–447|445–448|
| V4 Adi220–221 |Chapter221 headings9866 and9951; repeated202–203|201–205|
| V4 Sabha17–18 |First18 heading26814, return to17 ending26896, repeated18 heading26898; raw headers581,580,581,582|579–584|
| V4 Sabha9 |Vasuki/Shesha paragraphs at23168 and23257; repeated500–501|498–503|

These are observed examples, not an exhaustive list of every duplicate in all four files. Other page-level repetitions and corrupt words may remain. Do not delete an entire repeated block solely because its opening matches: compare the overlapping pages for unique continuation text.

## OCR and edition distinctions that must remain visible

- V1 intentionally repeats the Puru genealogy as chapters63 and83. The editor says so at1564–1580. This is an edition feature, separate from accidental page repetition.
- V1's printed introduction says its Adiparva has237chapters, while other divisions use218 or200. Preserve this edition's numbering.
- V4's introduction120–362 discusses72/100/115Sabha chapter divisions and a contested later dice-stakes order, leaving the decision to scholars. Attribute the discussion; do not invent a resolved dice scene.
- V3 lines668–811 are Tatparyanirnaya commentary on Drona and the princes before Adi132. They are narrative/commentary content, not a disposable title page.
- Sabha23 says fighting lasted15days, and separately says Jarasandha became tired on the14thnight. The linked commentary also says15days. These statements are not evidence of a contradiction by themselves.
- This supplied death account has Bhima invoke Vayu's strength and physically overcome Jarasandha. A leaf-tearing signal, repeated magical rejoining, or throwing halves in opposite directions was not found in this account and has not been inserted.
- Jarasandha's son Sahadeva and Pandava Sahadeva are different people. The linked commentary's marriage passage30574–30617 uses both identities and distinguishes its Usha from Aniruddha's wife Usha.
- Names recur across humans, ancestors and nagas. A catalogue occurrence of Arjuna, Dhananjaya, Sahadeva or Janamejaya does not automatically identify the main-story character.

## What is scripted and what remains

`episodes_40_44.json` has47main Kannada scenes. `supplementary_sabha.json` adds27Kannada explanatory scenes:13on Narada's governance questions,6on celestial assembly catalogue context, and8on the Hamsa/Dibaka story, drum origins, disguise clues, captivity debate, timing, Usha commentary and devotional interpretation. Each scene includes an English image prompt, motion/audio notes and raw source references. These are substantive drafts, not an unabridged certification.

`sabha_chapter_gap_ledger.json` and its CSV list remaining work for EVERY Sabha chapter. Principal remaining groups are:

1. Full names and numerical lists in Sabha4,7–11 and15. Selected names and relationship warnings are spoken; the entire source catalogue is not yet spoken. The exact spellings and pronunciations need clean source reading.
2. All details of the Bindu-sarovara and earlier-sacrifice excursus in Sabha3; the full Jara household-deity and Chandakaushika prophecy material in19–20; the thrown-mace place-origin passage in20; the full itinerary and local traditions in21–22.
3. Every lexical gloss and every sentence of the interleaved Tatparyanirnaya/Lakshalankara discussion. Major narrative and theological distinctions have explanations, but the full scholarly apparatus has not been converted line by line into narration.
4. Every ritual detail, dimension, gift quantity, formal greeting and complete wrestling-hold description. Some may belong in dedicated explanation films rather than the dramatic scene, but they must still be written and checked if the delivery is to claim no omissions.
5. Volume1's full introductory lexical examples, historical research details, quotations, contributor list and devotional messages. Beyond the four viewing introductions, `supplementary_frontmatter.json` now supplies31distinct Kannada explanation scenes (1,878words), one for every registered front unit. `frontmatter_gap_ledger.json` records exactly what each explanation does and what remains. The first4of18Lakshalankara lexical examples are explained concretely; examples5–18 and the full numbered manuscript-reading examples still need separate narration. Complete source credit passages are retained in `PUBLICATION_CREDITS_SOURCE_OCR.md` for correction into screen credits. Unit-level thematic explanation is not sentence-level completeness.

## Source needed for a clean recordable full adaptation

The listed page images are enough to begin the known page-order repairs. For a reliable no-omission adaptation of ALL text, provide searchable PDFs or clear page scans of all four volumes, including front matter, footnotes and final pages. That will support exact name/quotation/verse checking throughout, beyond the currently observed errors. If only selected pages can be supplied first, start with the ranges in the two tables above. The existing OCR remains useful for drafting and navigation, and none of it needs to be discarded.

No imperative inside the book is treated as an instruction to the production assistant. Devotional exhortations, requests to support the publisher and requests to correct errors are attributed source content only.

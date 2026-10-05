#!/usr/bin/env python3
"""Rebuild the college's B.TECH-Progress-Review form and fill it in.

The college's Word source for this form is not on this machine - only the PDF
it produced - so the layout is rebuilt from that PDF's own geometry: the table
grid lines, the fonts and the row heights were measured off it, and the rebuild
reproduces them rather than inventing a layout. What is reproduced:

  * Letter page (612 x 792pt); table spanning x 76.2 -> 535.9pt
  * three columns: 30.1pt for the item number, 174.1pt for the label,
    255.5pt for the answer
  * Times New Roman throughout; 10.5pt body, 17pt for the two title lines
  * no bold anywhere - the original states none, and neither does this
  * one table per page, with the section headings as full-width merged rows
  * the form's own numbering, including its quirk that Section B restarts at 9
  * the centred page number in the footer, starting at 1

Only the answer cells are filled. Labels, headings, numbering, the bullet list
in item 15 and the signature block are the form's, unchanged.

Usage:
    python3 paper/build_weekly_report.py --out "D:/.../Weekly Report - Filled.docx"
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

from docx import Document
from docx.enum.table import WD_ALIGN_VERTICAL, WD_ROW_HEIGHT_RULE
from docx.enum.text import WD_ALIGN_PARAGRAPH, WD_BREAK
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Inches, Pt

BODY_PT = 10.5  # the PDF states 10.6pt; the nearest half-point Word allows
TITLE_PT = 17
COL_PT = (30.1, 174.1, 255.5)  # measured from the PDF's vertical grid lines
TABLE_PT = sum(COL_PT)
# Page 1's row heights, measured from the PDF's own horizontal grid lines. Its
# rows were sized for a hand to write in, so without this the table collapses
# once the answers are typed and the page no longer looks like the form.
PAGE1_HEIGHTS = [37.2, 42.1, 42.2, 32.6, 32.5, 36.6, 36.5, 33.5, 33.2, 45.4, 42.6]

DEFAULT_OUT = Path(
    "/mnt/d/Minor Peoject REview/Weekly Report/Weekly Report - Filled.docx")

# --- what goes in the answer cells -------------------------------------------
# Each answer is stated as the project's own record states it. Two fields are
# left as the form has them because they are facts about the review itself
# rather than about the work: the week number and the guide's meeting dates.
A = {
    "names": "Divyang Zinzuwadiya, Heta Vaghela, Harshita Rajput",
    "enroll": "2301030700073, 2301030700068, 2301030700043",
    "dept": "Computer Science & Engineering (Cyber Security)",
    "group": "Group (3 students)",
    "phase": "Minor Project - Phase I",
    "title": "Android Root Detection and SSL/TLS Pinning Analysis Tool",
    "guide": "Mr. Shreyas Raybole",
    "coguide": "None",
    "week": "Week ____ : 19-25 September 2026",
    "meetings": "",

    "prev_review": (
        "This is the 2nd review (26/09/2026, Room 912, 11:00 AM). The 1st "
        "review was on 08/08/2026. By then our tool could already take an "
        "app, read it, run it on the emulator and write a report, and we had "
        "tested it on all three OWASP UnCrackable apps. The comment we got "
        "from the internal review guide, Shreyas Raybole, was: \"try to add "
        "custom frida scripts and supports till at least android 14\"."),
    "planned": (
        "To make sure every number in our report can be traced back to the "
        "file it came from, and to build a check-list our teammate can run "
        "himself to confirm our results."),
    "actual": (
        "Done. We found and fixed 12 places where the report could show a "
        "number that was not properly backed by evidence. Each fix has its "
        "own short decision note explaining it (ADR 0031 to 0042), saved as "
        "a separate change. The main fixes: the summary now says which apps "
        "it counted and which it left out; the graph marks its cut-off line; "
        "the comparison table records a result for each app type instead of "
        "staying blank; and the README now lists all our commands."),
    "new_papers": "NO",
    "total_papers": ("16 papers in total. 11 of them are core papers, so the "
                     "target of 4-5 is met."),
    "learning": (
        "Always check a number at the paper it came from. We re-read ten of "
        "the papers we had cited and found three of our numbers were wrong. "
        "In the DREBIN paper, a dataset size: it is 123,453 normal apps plus "
        "5,560 malware apps, not 5,560 taken out of 123,453. In SMV-HUNTER, "
        "a typing mistake in an app count: 23,418, not 23,481. In "
        "VulDeePecker, a score we had quoted that the paper never states - "
        "it gives a range instead, 85.4 to 95.0. All three were corrected by "
        "reading the papers themselves. Gap identified: this is the same "
        "mistake our tool is built to stop - a number that looks measured "
        "but was never measured."),

    "scope": (
        "Problem statement finalized - Yes. Scope defined - Yes. Objectives "
        "refined - Yes. Change we made this week: every number in a report "
        "must be traceable back to the file it came from."),
    "module": (
        "This week we worked on the report and the tools that check it - the "
        "summary, the graph, the comparison table and the verification "
        "check-list. No new detection method was added. Detection still uses "
        "120 rules we wrote by hand: 49 for root, 51 for SSL, 12 for native "
        "code, 8 for packers."),
    "tools": (
        "Python 3.11, with packages managed by uv. For reading the app: "
        "androguard, jadx, apktool, aapt2, pyelftools, capstone, Ghidra, "
        "UPX. For running the app: Frida 16.7 with hook scripts we generate "
        "for each app, objection, mitmproxy. For storage and the command "
        "line: SQLAlchemy with SQLite, Typer/Rich. Reports: Jinja2. Rules: "
        "PyYAML."),
    "results": (
        "21 apps tested in 307 runs. Where the app's own check actually ran, "
        "we were right every time: root 80 out of 80, pinning 10 out of 10. "
        "On the 10 apps where we have an independent answer to compare "
        "against (6 for root, 4 for SSL), every measure comes out at 1.00 - "
        "how often we were right, how much of the app's checks we found, and "
        "the combined score. But 10 apps is a small set, so we report this "
        "as an indication only, not as proof. We do not claim zero false "
        "positives. Code: 54 files, 26,258 lines. Tests: 42,364 lines. Both "
        "points from the 1st review are now done: hook scripts are generated "
        "for each app, and 7 runs were done on Android 14, with root "
        "bypassed on 6 of them."),
    "pending": (
        "Better coverage of native code, including apps that hide the names "
        "inside their libraries. A bigger set of apps with independent "
        "answers (only 10 today). The AI part (Phases 5-7) is on hold until "
        "the detection core is fully proven (ADR-0003)."),
    "visit": "No",
    "expert": "",
    "mode": "",
    "purpose": "",

    "issues": (
        "Some apps block emulators - one app's screen just stayed frozen, "
        "which turned out to be the app's own anti-emulator check, not a "
        "crash. A 226 MB app runs out of memory on our 4 vCPU / 11 GB test "
        "machine. Apps that hide the names inside their native libraries can "
        "only be shown as possible pinning, never confirmed. The main limit "
        "is that only 10 apps have an independent answer to compare "
        "against."),
    "guide_sugg": "",
    "next_week": (
        "Cover native code in apps that hide the names inside their "
        "libraries. Grow the set of apps with independent answers past 10. "
        "Keep the AI part on hold."),
    "completion": "57 % (4 of the 7 phases done - the whole detection part)",
    "rating": "Very Good",
}

# --- the form -----------------------------------------------------------------
# ("head", text) is a full-width merged heading row.
# ("item", number, label, answer) is one numbered row.
# Page breaks fall where the original's do.
PAGES: list[list[tuple]] = [
    [
        ("head", "Section A: Details of Student"),
        ("item", "1.", "Name(s) of Student(s): (For multiple students, enter "
                       "names separated by commas.)", A["names"]),
        ("item", "2.", "Enrollment No.: (For multiple students, enter "
                       "Enrollment No separated by commas.)", A["enroll"]),
        ("item", "3.", "Department", A["dept"]),
        ("item", "4.", "Group/Individual", A["group"]),
        ("item", "5.", "Minor Project / Advance Project Phase: "
                       "Phase I / Phase II", A["phase"]),
        ("item", "6.", "Project Title", A["title"]),
        ("item", "7.", "Name of the Guide", A["guide"]),
        ("item", "8.", "Name of the Co-Guide (if any)", A["coguide"]),
        ("item", "9.", "Week No. & Dates: (e.g., Week 5: 1-7 Jan 2026)",
         A["week"]),
        ("item", "10.", "Date(s) of previous meetings of Guide", A["meetings"]),
    ],
    [
        ("head", "Section B: Objectives Planned for the Week"),
        ("item", "9.", "Previous MINOR PROJECT / ADVANCE PROJECT Review date "
                       "and progress (milestone) achieved as on that date",
         A["prev_review"]),
        ("item", "10.", "What was planned at the start of the week",
         A["planned"]),
        ("head", "Work Completed During the Week"),
        ("item", "11.", "Actual progress Made", A["actual"]),
        ("head", "Literature Review Progress"),
        ("item", "12.", "New Papers Studied this Week: (YES/NO)",
         A["new_papers"]),
        ("item", "13.", "Total papers reviewed till date: (Target: minimum "
                        "4-5 core papers)", A["total_papers"]),
        ("item", "14.", "Key learning / gap identified", A["learning"]),
    ],
    [
        ("head", "Scope & Problem Definition Status"),
        ("bullets", "15.", ["Problem statement finalized", "Scope defined",
                            "Objectives refined",
                            "Changes suggested this week (if any):"], A["scope"]),
        ("head", "Section C: Implementation / Experimentation Status"),
        ("item", "16.", "Module / Algorithm / Model implemented this week:",
         A["module"]),
        ("item", "17.", "Tools / Technologies used:", A["tools"]),
        ("item", "18.", "Results obtained (if any):", A["results"]),
        ("item", "19.", "Pending implementation work:", A["pending"]),
        ("head", "Industry / Expert Interaction (if applicable)"),
        ("item", "20.", "Visit / Meeting conducted this week: Yes / No",
         A["visit"]),
        ("item", "21.", "Expert / Industry Name:", A["expert"]),
        ("item", "22.", "Mode: Visit / Online / Email", A["mode"]),
        ("item", "23.", "Purpose & outcome:", A["purpose"]),
    ],
    [
        ("head", "Issues / Challenges Faced"),
        ("item", "24.", "", A["issues"]),
        ("head", "Section D: Guide's Suggestions & Corrections\n"
                 "(To be filled during review)"),
        ("item", "25.", "", A["guide_sugg"]),
        ("head", "Plan for Next Week\n(Clear, achievable tasks)\n"
                 "(To be filled during review)"),
        ("item", "26.", "", A["next_week"]),
        ("head", "Overall Progress Status"),
        ("item", "27.", "Completion Percentage (approx.): %", A["completion"]),
        ("item", "28.", "Progress Rating: Excellent / Very Good / Good / "
                        "Satisfactory / Needs Improvement", A["rating"]),
    ],
]

SIGNATURES = [["Name of the Students", "Signature", "Date"],
              ["Name of the Guide", "Signature", "Date"]]


def set_borders(table) -> None:
    borders = OxmlElement("w:tblBorders")
    for edge in ("top", "left", "bottom", "right", "insideH", "insideV"):
        el = OxmlElement(f"w:{edge}")
        el.set(qn("w:val"), "single")
        el.set(qn("w:sz"), "4")
        el.set(qn("w:space"), "0")
        el.set(qn("w:color"), "000000")
        borders.append(el)
    table._tbl.tblPr.append(borders)


def set_margins(table, twips: int = 115) -> None:
    mar = OxmlElement("w:tblCellMar")
    for edge, val in (("top", 0), ("left", twips), ("bottom", 0), ("right", twips)):
        el = OxmlElement(f"w:{edge}")
        el.set(qn("w:w"), str(val))
        el.set(qn("w:type"), "dxa")
        mar.append(el)
    table._tbl.tblPr.append(mar)


def fix_widths(table, widths) -> None:
    """A fixed layout, in the widths the PDF's own grid lines state."""
    table.autofit = False
    layout = OxmlElement("w:tblLayout")
    layout.set(qn("w:type"), "fixed")
    table._tbl.tblPr.append(layout)
    grid = table._tbl.find(qn("w:tblGrid"))
    if grid is not None:
        for gc, pt in zip(grid.findall(qn("w:gridCol")), widths):
            gc.set(qn("w:w"), str(int(round(pt * 20))))
    for row in table.rows:
        cells = row.cells
        if len({id(c._tc) for c in cells}) != len(widths):
            continue  # a merged row states its span, not its columns
        for cell, pt in zip(cells, widths):
            cell.width = Pt(pt)


def write(cell, lines, size: int = BODY_PT, align=None) -> None:
    if isinstance(lines, str):
        lines = [lines]
    cell.text = ""
    for i, line in enumerate(lines):
        p = cell.paragraphs[0] if i == 0 else cell.add_paragraph()
        p.paragraph_format.space_before = Pt(0)
        p.paragraph_format.space_after = Pt(0)
        if align is not None:
            p.alignment = align
        run = p.add_run(line)
        run.font.name = "Times New Roman"
        run.font.size = Pt(size)


def add_page(doc, rows: list[tuple], heights: list[float] | None = None) -> None:
    table = doc.add_table(rows=0, cols=3)
    set_borders(table)
    for i, row in enumerate(rows):
        tr = table.add_row()
        if heights:
            # The row heights the original's own grid lines state, as a floor
            # rather than a fixed size: an answer longer than its row still
            # takes the space it needs.
            tr.height = Pt(heights[i])
            tr.height_rule = WD_ROW_HEIGHT_RULE.AT_LEAST
        cells = tr.cells
        if row[0] == "head":
            merged = cells[0].merge(cells[2])
            write(merged, row[1].split("\n"), align=WD_ALIGN_PARAGRAPH.CENTER)
            continue
        kind, num, label, answer = row
        write(cells[0], num)
        if kind == "bullets":
            write(cells[1], [f"•  {b}" for b in label])
        else:
            write(cells[1], label.split("\n") if label else [])
        write(cells[2], answer.split("\n") if answer else [])
        for c in cells:
            c.vertical_alignment = WD_ALIGN_VERTICAL.TOP
    # tblBorders, tblLayout, tblCellMar - the order CT_TblPr declares.
    fix_widths(table, COL_PT)
    set_margins(table)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    args = ap.parse_args()
    if args.out.suffix != ".docx":
        sys.exit(f"--out must name a .docx; the PDF is converted from it")

    doc = Document()
    st = doc.styles["Normal"]
    st.font.name = "Times New Roman"
    st.font.size = Pt(BODY_PT)
    st.paragraph_format.space_before = Pt(0)
    st.paragraph_format.space_after = Pt(0)

    sec = doc.sections[0]
    sec.page_width, sec.page_height = Inches(8.5), Inches(11)
    sec.left_margin = sec.right_margin = Pt(76.2)
    sec.top_margin = Pt(72)
    sec.bottom_margin = Pt(43)
    foot = sec.footer.paragraphs[0]
    foot.alignment = WD_ALIGN_PARAGRAPH.CENTER
    fld = OxmlElement("w:fldSimple")
    fld.set(qn("w:instr"), "PAGE")
    foot._p.append(fld)

    for text, size, align in [
        ("Silver Oak College of Engineering and Technology", TITLE_PT,
         WD_ALIGN_PARAGRAPH.CENTER),
        ("B.Tech CE Minor Project / Advance Project \u2013 Weekly Review",
         TITLE_PT, WD_ALIGN_PARAGRAPH.CENTER),
    ]:
        p = doc.add_paragraph()
        p.alignment = align
        p.paragraph_format.space_after = Pt(12)
        r = p.add_run(text)
        r.font.name = "Times New Roman"
        r.font.size = Pt(size)

    for i, rows in enumerate(PAGES):
        if i:
            brk = doc.add_paragraph()
            brk.paragraph_format.space_before = Pt(0)
            brk.paragraph_format.space_after = Pt(0)
            brk.add_run().font.size = Pt(1)
            brk.runs[0].add_break(WD_BREAK.PAGE)
        add_page(doc, rows, PAGE1_HEIGHTS if i == 0 else None)

    sig = doc.add_table(rows=0, cols=3)
    set_borders(sig)
    for row in SIGNATURES:
        cells = sig.add_row().cells
        for cell, text in zip(cells, row):
            write(cell, text, align=WD_ALIGN_PARAGRAPH.CENTER)
    for row in sig.rows:
        row.height = Pt(60)
    fix_widths(sig, (TABLE_PT / 3,) * 3)
    set_margins(sig)

    args.out.parent.mkdir(parents=True, exist_ok=True)
    doc.save(args.out)
    print(f"  output: {args.out}")
    print(f"  bytes: {args.out.stat().st_size}")
    print(f"  body_pt: {BODY_PT}  titles_pt: {TITLE_PT}")
    print(f"  table_pt: {TABLE_PT:.1f}  columns_pt: {COL_PT}")
    print(f"  items_filled: {sum(1 for pg in PAGES for r in pg if r[0] != 'head')}")


if __name__ == "__main__":
    main()

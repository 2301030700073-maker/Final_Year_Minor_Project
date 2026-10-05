#!/usr/bin/env python3
"""Render paper/paper.md into paper/IEEE-paper.docx using the IEEE A4 conference
template's own stylesheet.

Every formatting decision - page geometry, margins, column layout, fonts, the
named paragraph styles (papertitle, Author, Abstract, Keywords, Heading1-3,
BodyText, bulletlist, tablecolhead, tablecopy, references) - is taken from the
supplied template package. The template's sectPr blocks are copied through
verbatim rather than rebuilt, so OOXML child-element ordering stays exactly as
the template has it. Only word/document.xml is generated; every other part of
the package (styles.xml, theme, fontTable, numbering, rels, footers) is carried
over unchanged.

Usage:
    python3 paper/build_ieee_docx.py \
        --template /mnt/d/conference-template-a4.docx \
        --source   paper/paper.md \
        --out      paper/IEEE-paper.docx

Markdown subset understood (kept deliberately small and readable):
    # Title                      -> papertitle
    @author Name | Dept | Org | City | Email  -> Author (up to four lines)
    @abstract ...                -> Abstract
    @keywords ...                -> Keywords
    ## Heading                   -> Heading1
    ### Heading                  -> Heading2
    #### Heading                 -> Heading3
    | TABLE N: caption           -> tablehead caption, then a bordered table
    | cell | cell ...            -> first | row is the header, the rest are data
    - item                       -> bulletlist
    [n] reference text           -> references  (only under a "References" head)
    anything else                -> BodyText
Inline **bold** and *italic* are supported.
"""
from __future__ import annotations

import argparse
import re
import sys
import xml.etree.ElementTree as ET
import zipfile
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
DEFAULT_TEMPLATE = Path("/mnt/d/conference-template-a4.docx")

CELL_STYLE_HEAD = "tablecolhead"
# The author styles are 11pt, at which the longest address is ~148pt against
# a 144.67pt author column and breaks mid-word. 10pt clears it with room to
# spare and does not visibly depart from the template's author block.
EMAIL_SIZE = 20
CELL_STYLE_BODY = "tablecopy"


def esc(text: str) -> str:
    return text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")


def runs(text: str) -> str:
    """`text` as one or more runs, honouring **bold** and *italic*."""
    out = []
    for piece in re.split(r"(\*\*[^*]+\*\*|\*[^*]+\*)", text):
        if not piece:
            continue
        if piece.startswith("**") and piece.endswith("**") and len(piece) > 4:
            rpr, body = "<w:rPr><w:b/></w:rPr>", piece[2:-2]
        elif piece.startswith("*") and piece.endswith("*") and len(piece) > 2:
            rpr, body = "<w:rPr><w:i/></w:rPr>", piece[1:-1]
        else:
            rpr, body = "", piece
        out.append(f'<w:r>{rpr}<w:t xml:space="preserve">{esc(body)}</w:t></w:r>')
    return "".join(out)


def para(
    text: str = "",
    style: str | None = None,
    sect: str | None = None,
    trailer: str = "",
    keep_next: bool = False,
    leader: str = "",
    size: int | None = None,
) -> str:
    """A paragraph. `sect` is a section break and belongs in pPr; `trailer` is
    emitted after the runs and `leader` before them, which is where a column
    break has to sit depending on whether it closes a column or opens one;
    `keep_next` binds the paragraph to what follows it, so a table caption does
    not float away from its table at a column break."""
    ppr = f'<w:pStyle w:val="{style}"/>' if style else ""
    if keep_next:
        ppr += "<w:keepNext/>"
    if sect:
        ppr += sect
    body = runs(text)
    if size:
        # A direct size rather than a style: the author styles are sized for
        # short addresses, and a full one breaks mid-word in a 145pt column.
        body = (
            f'<w:r><w:rPr><w:sz w:val="{size}"/><w:szCs w:val="{size}"/></w:rPr>'
            f'<w:t xml:space="preserve">{esc(text)}</w:t></w:r>'
        )
    return (
        f'<w:p>{f"<w:pPr>{ppr}</w:pPr>" if ppr else ""}'
        f"{leader}{body}{trailer}</w:p>"
    )


def table(rows: list[list[str]], header: str, caption: str) -> str:
    """A bordered table. The first row is the header row."""
    borders = (
        "<w:tblBorders>"
        + "".join(
            f'<w:{edge} w:val="single" w:sz="4" w:space="0" w:color="auto"/>'
            for edge in ("top", "left", "bottom", "right", "insideH", "insideV")
        )
        + "</w:tblBorders>"
    )
    xml = [
        "<w:tbl><w:tblPr>",
        '<w:tblW w:w="5000" w:type="pct"/>',
        borders,
        '<w:tblLayout w:type="autofit"/>',
        '<w:tblCellMar><w:top w:w="28" w:type="dxa"/><w:left w:w="57" w:type="dxa"/>'
        '<w:bottom w:w="28" w:type="dxa"/><w:right w:w="57" w:type="dxa"/></w:tblCellMar>',
        "</w:tblPr>",
        "<w:tblGrid>"
        + "".join(f'<w:gridCol w:w="{int(4800 / max(1, len(rows[0])))}"/>' for _ in rows[0])
        + "</w:tblGrid>",
    ]
    for i, row in enumerate(rows):
        style = CELL_STYLE_HEAD if i == 0 else CELL_STYLE_BODY
        trpr = "<w:trPr><w:tblHeader/></w:trPr>" if i == 0 else ""
        xml.append(f"<w:tr>{trpr}")
        for cell in row:
            xml.append(
                '<w:tc><w:tcPr><w:tcW w:w="0" w:type="auto"/></w:tcPr>'
                + para(cell, style)
                + "</w:tc>"
            )
        xml.append("</w:tr>")
    xml.append("</w:tbl>")
    # A table must be followed by a paragraph or Word joins it to the next one.
    return para(caption, header, keep_next=True) + "".join(xml) + para("", "BodyText")


def parse(source: str) -> tuple[str, list[str], list[str], str, str]:
    """Split the source into (title, authors, body blocks, abstract, keywords)."""
    lines = source.splitlines()
    title = ""
    authors: list[str] = []
    abstract = ""
    keywords = ""
    body: list[str] = []
    in_table: list[list[str]] | None = None
    table_caption = ""
    refs = False
    buf: list[str] = []

    def flush() -> None:
        if buf:
            body.append(para(" ".join(buf).strip(), "BodyText"))
            buf.clear()

    def flush_table() -> None:
        nonlocal in_table, table_caption
        if in_table:
            body.append(table(in_table, "tablehead", table_caption))
            in_table = None
            table_caption = ""

    for raw in lines:
        line = raw.rstrip()
        if not line.strip():
            flush()
            continue
        if line.startswith("| "):
            cells = [c.strip() for c in line[2:].split("|")]
            if cells and not cells[-1]:
                cells.pop()  # a trailing "|" terminates the row, it is not a cell
            if in_table is None:
                table_caption = cells[0]
                in_table = []
            else:
                in_table.append(cells)
            continue
        flush_table()
        if line.startswith("# ") and not title:
            flush()
            title = line[2:].strip()
            continue
        if line.startswith("@author "):
            flush()
            authors.append(line[len("@author ") :].strip())
            continue
        if line.startswith("@abstract "):
            flush()
            abstract = line[len("@abstract ") :].strip()
            continue
        if line.startswith("@keywords "):
            flush()
            keywords = line[len("@keywords ") :].strip()
            continue
        if line.startswith("#### "):
            flush()
            body.append(para(line[5:].strip(), "Heading3"))
            continue
        if line.startswith("### "):
            flush()
            body.append(para(line[4:].strip(), "Heading2"))
            continue
        if line.startswith("## "):
            flush()
            heading = line[3:].strip()
            refs = "reference" in heading.lower()
            # The template numbers Heading1 (I., II., ...) and Heading2 (A.,
            # B., ...) itself and sets the unnumbered closing sections in
            # Heading5, so the source carries no numbers of its own.
            closing = heading.lower().startswith(("acknowledg", "reference"))
            body.append(para(heading, "Heading5" if closing else "Heading1"))
            continue
        if line.startswith("- "):
            flush()
            body.append(para(line[2:].strip(), "bulletlist"))
            continue
        if refs and re.match(r"^\[\d+\]", line):
            flush()
            # The references style numbers its entries, so the source's own
            # [n] would render a second time in front of it.
            body.append(para(re.sub(r"^\[\d+\]\s*", "", line.strip()), "references"))
            continue
        buf.append(line.strip())
    flush()
    flush_table()
    return title, authors, body, abstract, keywords


def build(template: Path, source: Path, out: Path) -> dict:
    src = source.read_text(encoding="utf-8")
    title, authors, body, abstract, keywords = parse(src)

    with zipfile.ZipFile(template) as zf:
        parts = {name: zf.read(name) for name in zf.namelist()}
    doc = parts["word/document.xml"].decode("utf-8")

    root_open = re.search(r"<w:document\b[^>]*>", doc).group(0)
    sects = re.findall(r"<w:sectPr\b.*?</w:sectPr>", doc, re.S)
    if len(sects) < 2:
        sys.exit(f"template has {len(sects)} sectPr blocks; expected the title and body sections")
    title_sect = next((s for s in sects if "titlePg" in s), sects[0])
    author_sect = next((s for s in sects if 'w:num="3"' in s), None)
    body_sect = next((s for s in sects if 'w:num="2"' in s), None)
    if body_sect is None:
        sys.exit("template carries no two-column body section; refusing to guess the page layout")

    blocks: list[str] = []
    if title:
        blocks.append(para(title, "papertitle", title_sect if author_sect else None))
    for i, author in enumerate(authors):
        fields = [f.strip() for f in author.split("|")]
        while len(fields) < 5:
            fields.append("")
        name, dept, org, city, email = fields[:5]
        last = i == len(authors) - 1
        # Each author occupies one column of the author section. The column
        # break is carried by the paragraph that OPENS the column, not by the
        # last one of the column before it: a break at the end of a paragraph
        # leaves that paragraph's mark to render on a line of its own at the
        # top of the next column, dropping every later author by a line. The
        # section break that closes the block stays on the last author, or the
        # affiliation and email fall into the body's two-column section.
        lead = '<w:r><w:br w:type="column"/></w:r>' if (author_sect and i) else ""
        blocks.append(para(name, "Author", None, "", False, lead))
        blocks.append(para(f"{dept}, {org}" if org else dept, "Author"))
        if city:
            blocks.append(para(city, "Author"))
        blocks.append(
            para(email, "Author", author_sect or title_sect, size=EMAIL_SIZE)
            if last
            else para(email, "Author", size=EMAIL_SIZE)
        )
    if abstract:
        blocks.append(para(f"Abstract—{abstract}", "Abstract"))
    if keywords:
        blocks.append(para(f"Keywords—{keywords}", "Keywords"))
    blocks.extend(body)

    xml = (
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n'
        + root_open
        + "<w:body>"
        + "".join(blocks)
        + body_sect
        + "</w:body></w:document>"
    )
    ET.fromstring(xml)  # refuse to emit a package that does not parse

    parts["word/document.xml"] = xml.encode("utf-8")
    out.parent.mkdir(parents=True, exist_ok=True)
    order = ["[Content_Types].xml"] + [n for n in parts if n != "[Content_Types].xml"]
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
        for name in order:
            zf.writestr(name, parts[name])
    return {
        "output": str(out),
        "bytes": out.stat().st_size,
        "parts": len(parts),
        "authors": len(authors),
        "paragraphs": xml.count("<w:p>"),
        "tables": xml.count("<w:tbl>"),
        "title_section": title_sect[:60] + "...",
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--template", type=Path, default=DEFAULT_TEMPLATE)
    ap.add_argument("--source", type=Path, default=REPO / "paper" / "paper.md")
    ap.add_argument("--out", type=Path, default=REPO / "paper" / "IEEE-paper.docx")
    args = ap.parse_args()
    if not args.template.is_file():
        sys.exit(f"template not found: {args.template}")
    info = build(args.template, args.source, args.out)
    for k, v in info.items():
        print(f"  {k}: {v}")


if __name__ == "__main__":
    main()

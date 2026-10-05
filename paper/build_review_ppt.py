#!/usr/bin/env python3
"""Fill the college's Review-1 PPT template with this project's content.

The template package is copied through verbatim and only the text inside the
shapes it already ships is replaced. Every formatting property a run needs -
typeface, size, weight, colour - is cloned from the template's own run (or, in
an empty table cell, from the cell's own endParaRPr), so the deck keeps the
design it was given rather than one this script invents.

Where a template shape carries a placeholder instruction ("Introduction of
research area and topics"), that instruction is what gets replaced. Shapes the
template leaves empty (the identity table's value column on the title slide)
are filled only with facts this project can support; anything not known is left
as the template has it rather than invented.

Four sizes are deliberate departures, each because the real content is larger
than the template's stub was:

  * TITLE_SIZE - the template sets the three title lines at 54pt, which is
    sized for the 16-character "<Project Title>" stub. The real title is 91
    characters; at 54pt it needs 5 lines in a 211pt box. 32pt fits it in 4
    lines / 154pt (measured with the real Cambria and Times faces), keeping the
    template's bold and its 632423 maroon.
  * BODY_SIZE - the template lets slide bullets inherit 32pt from the master.
    At 32pt the box holds about five short bullets, which is not enough to
    describe the pipeline. 24pt holds roughly eleven lines, so each section can
    say what it actually did. The bullet, indent, font and colour are still the
    template's; only the size changes.
  * LITERATURE_SIZE - the 10-row table's frame is 343pt tall with a 30pt
    minimum row, so all 11 rows fit only while each cell is one line. 8pt keeps
    every cell to one line in a 120.6pt column.
  * METHOD_SIZE - slide 10 is the only Methodology slide the template ships,
    and one 356pt box cannot hold four stages with their steps and sub-steps.
    Three clones of slide 10 carry the detail - two for the stages' steps and
    one for the response to the 1st review - and 18pt fits thirteen lines in
    the same box with room for a wrapped line.

Usage:
    python3 paper/build_review_ppt.py
    python3 paper/build_review_ppt.py --out "/mnt/d/.../Review-1.pptx"
"""
from __future__ import annotations

import argparse
import re
import sys
import zipfile
from pathlib import Path

DEFAULT_TEMPLATE = Path(
    "/mnt/d/Minor Peoject REview/PPT/"
    "1010103494-Major Project_1010043493-Advanced Programming with Project-I "
    "Review 1 W26 (1) (1).pptx"
)
# The deck of record lives beside its template, not in the repo. A default that
# wrote into paper/ produced a second copy nobody rendered, so a rebuild looked
# like it had taken while the artefact on the drive was still the old one.
DEFAULT_OUT = Path(
    "/mnt/d/Minor Peoject REview/PPT/"
    "Review-1 - Android Root Detection and SSL Pinning.pptx")

COURSE_NAME = "Advanced Programming with Project-I"
COURSE_CODE = "1010043493"
PROJECT_TITLE = (
    "A Rule-Based Tool for Finding and Verifying Root Detection and SSL/TLS "
    "Pinning in Android Apps"
)
PRESENTATION_DATE = "26-09-2026"

TITLE_SIZE = 3200  # 32pt; the template's 54pt is sized for a 16-char stub
BODY_SIZE = 2400  # 24pt; the template's inherited 32pt holds too few bullets
REFERENCES_SIZE = 1100  # 11pt; sixteen IEEE entries in one 356pt box
LITERATURE_SIZE = 800  # 8pt; keeps all ten rows one line each
METHOD_SIZE = 1800  # 18pt; the Methodology sub-steps on the two cloned slides

# Slide number -> body bullets. Keys are the slide numbers in the package.
# Every figure here is taken from the paper's own measured results; nothing is
# estimated. Where the paper reports a limit rather than a number, the slide
# reports the limit.
BODY: dict[int, list[str]] = {
    3: [
        "Analysts often need to look inside an Android app.",
        "They may need to see what data it sends, or whether it protects it.",
        "Two defences get in the way, and both are common in real apps.",
        "Root detection notices the rooted phone the analysis tools need.",
        "Certificate pinning rejects the proxy certificate the tools need.",
        "The hard problem is not bypassing them. It is measuring them.",
        "A static scan sees the code for a defence, not whether it runs.",
        "This project builds a tool that keeps those two questions apart.",
    ],
    4: [
        "Analysis tools attach to a running app, so the phone must be rooted.",
        "Root detection exists to notice exactly that and change behaviour.",
        "To read traffic, the analyst puts a proxy in the middle.",
        "Pinning makes the app accept one certificate and refuse the proxy's.",
        "A static scan can show the code for a defence is present.",
        "It cannot show whether the app ever acts on it.",
        "Advertising and analytics libraries run their own root checks.",
        "Reporting those as the app's protection overstates what was measured.",
    ],
    5: [
        "Most apps bundle such a library, so the overstatement is the norm.",
        "That gap changes what a report actually means.",
        "Teams plan a test around which defences really run.",
        "A finding with no evidence behind it is not usable in a report.",
        "Every finding here carries a label saying how it was obtained.",
        "The tool attributes each match by package name, separating vendor code.",
        "It records how completely each surface was scanned.",
        "It never calls a defence absent unless every surface was fully scanned.",
    ],
    7: [
        "Learning-based detectors report a likelihood across a population.",
        "This tool reports a verdict for one app, with its basis attached.",
        "Static tools report that code is present, not that it runs.",
        "Dynamic tools exercise the app but do not say which rule matched.",
        "Few tools state how much of the app was actually scanned.",
        "No common tool separates a code match from an observed check.",
        "Absence of evidence gets reported as evidence of absence.",
        "A bundled library's check is read as the app's own protection.",
    ],
    8: [
        "G1 - one source of truth: rules a person can read and change.",
        "G2 - no mixed confidence: a match never reads as an observation.",
        "G3 - negatives bounded, not asserted: a negative carries its coverage.",
        "G4 - every run accountable: a written justification and a log record.",
        "Attribute every match by package name to separate vendor libraries.",
        "Confirm behaviour by running the app, never by reading it alone.",
        "Record the coverage of each surface beside every finding.",
        "Build the deterministic core before any learned component.",
    ],
    9: [
        "Corpus: 21 packages - OWASP UnCrackable 1-3 and 18 store apps.",
        "Host: WSL2 Ubuntu 24.04, 4 vCPU, 11 GB RAM, rooted Android emulator.",
        "Device recorded per run: 7 runs on Android 14 (API 34); the rest static-only.",
        "Bytecode and manifest: androguard, jadx, apktool, aapt2.",
        "Native: pyelftools, capstone, Ghidra headless, UPX.",
        "Dynamic: Frida and objection on frida-server, mitmproxy for traffic.",
        "Storage and reports: SQLAlchemy over SQLite, rendered from templates.",
        "Language: Python 3.11+, dependencies locked with uv.",
        "Detection rules: 120 hand-written YAML entries, version controlled.",
    ],
    10: [
        "Stage 1 - ingest: unpack the package, normalise it, record its hash.",
        "AAB input is normalised so the base module's native libraries survive.",
        "Stage 2 - static: match 120 rules across five surfaces.",
        "Surfaces: bytecode, manifest, native ELF, JavaScript, packer signatures.",
        "Stage 3 - dynamic: instrument the app with Frida, drive it with objection.",
        "Verification is empirical: the app's own check must accept the environment.",
        "Attribute each match by package name to separate vendor libraries.",
        "Record coverage per surface; a partial scan removes negative certification.",
        "Stage 4 - report from the stored run record; the run is then audited.",
    ],
    11: [
        "21 packages analysed across 307 recorded runs and 340 reports.",
        "The audit log holds 983 linked records.",
        "Ground truth is collected independently and attached to a package.",
        "One datapoint per package: that package's most recent run.",
        "Confirmation rate 1.00 where the app's own check ran: root 80/80.",
        "The same rate for pinning: 10/10.",
        "Precision, recall and F1 all 1.00 on the fully covered, ground-truthed subset.",
        "That subset is small - root 6 apps, SSL 4 apps - so read it as directional.",
        "Excluded for incomplete coverage: 9 packages for root, 11 for pinning.",
    ],
    12: [
        "Root detection and pinning are measurement problems, not just patterns.",
        "120 hand-written rules cover five surfaces and decide every finding.",
        "Every finding states whether it was matched by a rule or observed.",
        "A negative is certified only when every surface was fully scanned.",
        "Every run is justified, pinned to tool versions and audited.",
        "Precision, recall and F1 are 1.00 on the small fully covered subset.",
        "The tool does not claim zero false positives.",
    ],
    13: [
        "Wider native coverage, including symbol-stripped libraries.",
        "A larger corpus with independent ground truth, to grow the measured subset.",
        "Learned components added strictly after detection, never to decide it.",
        "Suggested hypotheses drawn from decompiled code.",
        "The report narrative written from the stored run record.",
        "Drafted instrumentation, sandboxed and gated behind human review.",
    ],
}

REFERENCES = [
    'OWASP Foundation, "OWASP Mobile Security Testing Guide," 2024.',
    'OWASP Foundation, "Mobile Application Security Verification Standard (MASVS)," v2.1, 2024.',
    'A. Desnos, "Androguard: Reverse engineering, malware and goodware analysis of Android applications," 2011.',
    'D. Arp, M. Spreitzenbarth, M. Hubner, H. Gascon, and K. Rieck, "DREBIN: Effective and explainable detection of Android malware in your pocket," in Proc. NDSS, 2014.',
    'W. Enck, P. Gilbert, B.-G. Chun, L. P. Cox, J. Jung, P. McDaniel, and A. N. Sheth, "TaintDroid: An information-flow tracking system for realtime privacy monitoring on smartphones," in Proc. 9th USENIX OSDI, 2010.',
    'S. Fahl, M. Harbach, T. Muders, L. Baumgartner, B. Freisleben, and M. Smith, "Why Eve and Mallory love Android: An analysis of Android SSL (in)security," in Proc. ACM CCS, 2012.',
    'S. Fahl, M. Harbach, H. Perl, M. Koetter, and M. Smith, "Rethinking SSL development in an appified world," in Proc. ACM SIGSAC CCS, 2013.',
    'D. Sounthiraraj, J. Sahs, G. Greenwood, Z. Lin, and L. Khan, "SMV-HUNTER: Large scale, automated detection of SSL/TLS man-in-the-middle vulnerabilities in Android apps," in Proc. NDSS, 2014.',
    'T. Petsas, G. Voyatzis, E. Athanasopoulos, M. Polychronakis, and S. Ioannidis, "Rage against the virtual machine: Hindering dynamic analysis of Android malware," in Proc. 7th European Workshop on System Security, 2014.',
    'S. Rasthofer, S. Arzt, M. Miltenberger, and E. Bodden, "Harvesting runtime values in Android applications that feature anti-analysis techniques," in Proc. NDSS, 2016.',
    'S. Poeplau, Y. Fratantonio, A. Bianchi, C. Kruegel, and G. Vigna, "Execute this! Analyzing unsafe and malicious dynamic code loading in Android applications," in Proc. NDSS, 2014.',
    'Z. Li, D. Zou, S. Xu, X. Ou, H. Jin, S. Wang, Z. Deng, and Y. Zhong, "VulDeePecker: A deep learning-based system for vulnerability detection," in Proc. NDSS, 2018.',
    'Y. Zhou, S. Liu, J. Siow, X. Du, and Y. Liu, "Devign: Effective vulnerability identification by learning comprehensive program semantics via graph neural networks," in Proc. NeurIPS, 2019.',
    'M. Chen, J. Tworek, H. Jun, Q. Yuan, H. P. de Oliveira Pinto, J. Kaplan, et al., "Evaluating large language models trained on code," arXiv:2107.03374, 2021.',
    'K. W. Y. Au, Y. F. Zhou, Z. Huang, and D. Lie, "PScout: Analyzing the Android permission specification," in Proc. ACM CCS, 2012.',
    'S. Arzt, S. Rasthofer, C. Fritz, E. Bodden, A. Bartel, J. Klein, Y. Le Traon, D. Octeau, and P. McDaniel, "FlowDroid: Precise context, flow, field, object-sensitive and lifecycle-aware taint analysis for Android apps," in Proc. ACM SIGPLAN PLDI, 2014.',
]

# Slide 6's table: (Ref, Algorithm used, Dataset, Result, Findings). The
# template's six columns are 1714500 EMU each (120.6pt usable), so every string
# is held to about 30 characters - that is what keeps all eleven rows inside
# the frame at LITERATURE_SIZE. An empty string leaves the template's cell
# alone, which is the correct answer where a figure has no source.
#
# Every figure below is the one stated in the cited paper's own text. Three
# were corrected on 2026-09-25 after reading the sources: [4] is 123,453 benign
# applications AND 5,560 malware samples, not 123,453 apps of which 5,560 are
# malware; [8] is 23,418 apps, not 23,481; [12] reports a false-negative rate,
# not an F1, and its F1 is a range (85.4-95.0) rather than the single 90.5 that
# was here. [11] is 9.25% loading external code *insecurely*, which is a
# narrower claim than the cell previously made.
LITERATURE: list[tuple[str, str, str, str, str]] = [
    ("[4]", "Feature-based detection",
     "123,453 benign, 5,560 malware", "94% of malware detected",
     "Separates malware at scale"),
    ("[5]", "Runtime flow tracking",
     "30 popular apps", "68 misuses in 20 apps",
     "Shows behaviour, not code"),
    ("[6]", "TLS validation survey",
     "13,500 Play Store apps", "1,074 (8.0%) vulnerable",
     "Pinning widely deployed"),
    ("[7]", "SSL development study",
     "13,500 Android, 1,009 iOS", "14% fail SSL validation",
     "Appified TLS done badly"),
    ("[8]", "Automated MITM detection",
     "23,418 Play Store apps", "726 confirmed vulnerable",
     "MITM flaws are common"),
    ("[9]", "Anti-analysis study",
     "10 patched malware samples", "All tools evaded most checks",
     "Spots the analysis sandbox"),
    ("[10]", "Runtime value harvesting",
     "16,799 malware samples", "86.6% of values recovered",
     "Recovers runtime values"),
    ("[11]", "Dynamic code loading",
     "1,632 Play Store apps", "9.25% load code insecurely",
     "Code hidden from static view"),
    ("[12]", "Deep learning on code",
     "61,638 code gadgets", "FPR 5.7%, FNR 7.0%",
     "Learned code reasoning"),
    ("[16]", "Context-aware taint",
     "DroidBench test suite", "93% recall, 86% precision",
     "Precise Android data flow"),
]

# The title slide's identity table, by row. Row 0 is left alone: the Project ID
# is assigned by the department and is not a fact this project can derive, and
# an invented one on a review slide is worse than a blank one.
ENROLLMENT_NO = "2301030700073, 2301030700068, 2301030700043"
GUIDE_NAME = "Mr. Shreyas Raybole"

IDENTITY: dict[int, str | None] = {
    0: None,  # Project ID
    1: ENROLLMENT_NO,  # in the same order as the names in row 2
    2: "Divyang Zinzuwadiya, Heta Vaghela, Harshita Rajput",
    3: "B.Tech Computer Science and Engineering (Cyber Security)",
    4: GUIDE_NAME,
}


def esc(text: str) -> str:
    return text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")


def with_attr(rpr: str, name: str, value: str) -> str:
    """`rpr` carrying `name="value"` and no other value for that name."""
    rpr = re.sub(rf'\s{name}="[^"]*"', "", rpr)
    if rpr.endswith("/>"):
        return rpr[:-2].rstrip() + f' {name}="{value}"/>'
    return re.sub(r"<a:rPr", f'<a:rPr {name}="{value}"', rpr, count=1)


def with_sz(rpr: str, size: int | None) -> str:
    """`rpr` carrying `size` (hundredths of a point) and no other size."""
    if size is None:
        return re.sub(r'\ssz="\d+"', "", rpr)
    return with_attr(rpr, "sz", str(size))


def with_bold(rpr: str) -> str:
    return with_attr(rpr, "b", "1")


def with_color(rpr: str, scheme: str) -> str:
    """`rpr` with a scheme colour, unless the template already set one."""
    if "<a:solidFill>" in rpr or "<a:noFill/>" in rpr:
        return rpr
    fill = f'<a:solidFill><a:schemeClr val="{scheme}"/></a:solidFill>'
    if rpr.endswith("/>"):
        return rpr[:-2].rstrip() + f">{fill}</a:rPr>"
    # a:rPr children are ordered; a solidFill precedes the typeface elements.
    for tag in ("<a:latin", "<a:ea", "<a:cs", "<a:sym", "</a:rPr>"):
        if tag in rpr:
            return rpr.replace(tag, fill + tag, 1)
    return rpr


def run(text: str, rpr: str) -> str:
    return f"<a:r>{rpr}<a:t>{esc(text)}</a:t></a:r>"


def para(template: str, text: str, rpr: str | None = None,
         size: int | None = None, scheme: str | None = None) -> str:
    """One paragraph in `template`'s own shape.

    The paragraph properties are the template's, so the bullet, indent and
    alignment are kept. The run properties are the template's too, unless the
    caller supplies better ones - in an empty table cell the only statement of
    formatting the template makes is the cell's endParaRPr. Only the size is
    ever overridden, and only where the caller asks.
    """
    m = re.search(r"<a:pPr\b.*?</a:pPr>|<a:pPr\b[^>]*/>", template, re.S)
    ppr = m.group(0) if m else ""
    r = rpr if rpr is not None else run_rpr(template)
    r = with_sz(r, size)
    if scheme:
        r = with_color(r, scheme)
    return f"<a:p>{ppr}{run(text, r)}</a:p>"


def run_rpr(fragment: str) -> str:
    """The run properties a template paragraph or table cell states.

    A paragraph with text states them on its first run; an empty one states
    them on its endParaRPr, which is the same set of attributes under a
    different name.
    """
    m = re.search(r"<a:rPr\b[^>]*(?:/>|>.*?</a:rPr>)", fragment, re.S)
    if m:
        return m.group(0)
    m = re.search(r"<a:endParaRPr\b[^>]*(?:/>|>.*?</a:endParaRPr>)", fragment, re.S)
    if m:
        return m.group(0).replace("<a:endParaRPr", "<a:rPr", 1).replace(
            "</a:endParaRPr>", "</a:rPr>"
        )
    sys.exit("template fragment states no run properties to clone")


def placeholder(xml: str, kind: str, idx: str | None = None) -> tuple[int, int]:
    """Span of the <p:sp> carrying the given placeholder, or exit loudly."""
    want = f'<p:ph type="{kind}"' + (f' idx="{idx}"' if idx else "")
    for m in re.finditer(r"<p:sp>.*?</p:sp>", xml, re.S):
        sp = m.group(0)
        if want in sp and "<p:txBody>" in sp:
            return m.start(), m.end()
    sys.exit(f"template has no {kind} placeholder{' idx ' + idx if idx else ''}")


def rewrite(tb: str, blocks: list[str]) -> str:
    """`tb`'s paragraphs replaced by `blocks`, keeping everything around them."""
    ps = re.findall(r"<a:p>.*?</a:p>", tb, re.S)
    if not ps:
        sys.exit("text body carries no paragraph to copy properties from")
    return tb[: tb.index(ps[0])] + "".join(blocks) + tb[tb.rindex(ps[-1]) + len(ps[-1]) :]


def set_body(xml: str, lines: list[str | tuple[str, bool]],
             size: int | None = None) -> str:
    """Replace a body placeholder's paragraphs with `lines`.

    A line is either text, or (text, True) to set it bold. Bold is how the
    cloned Methodology slides mark a stage heading among its steps; every other
    property still comes from the template's own first paragraph.
    """
    start, end = placeholder(xml, "body", "1")
    sp = xml[start:end]
    tb = re.search(r"<p:txBody>.*?</p:txBody>", sp, re.S).group(0)
    p0 = re.findall(r"<a:p>.*?</a:p>", tb, re.S)[0]
    rpr = run_rpr(p0)
    blocks = []
    for ln in lines:
        text, bold = (ln, False) if isinstance(ln, str) else ln
        blocks.append(para(p0, text, with_bold(rpr) if bold else rpr, size))
    new = rewrite(tb, blocks)
    return xml[:start] + sp.replace(tb, new) + xml[end:]


def set_title(xml: str, text: str) -> str:
    """Replace the title placeholder's text, keeping the template's own runs."""
    start, end = placeholder(xml, "title")
    sp = xml[start:end]
    tb = re.search(r"<p:txBody>.*?</p:txBody>", sp, re.S).group(0)
    ps = re.findall(r"<a:p>.*?</a:p>", tb, re.S)
    if not ps:
        sys.exit("title placeholder carries no paragraph to copy from")
    new = rewrite(tb, [para(ps[0], text, run_rpr(ps[0]))])
    return xml[:start] + sp.replace(tb, new) + xml[end:]


def set_title_slide_text(xml: str) -> str:
    """The three centred lines: course name, course code, project title."""
    for m in re.finditer(r"<p:sp>.*?</p:sp>", xml, re.S):
        if "Course Name" not in m.group(0):
            continue
        sp = m.group(0)
        tb = re.search(r"<p:txBody>.*?</p:txBody>", sp, re.S).group(0)
        ps = re.findall(r"<a:p>.*?</a:p>", tb, re.S)
        if len(ps) != 3:
            sys.exit(f"title text box has {len(ps)} paragraphs; expected 3")
        # The template's run carries the design - Times New Roman, bold, the
        # 632423 maroon. All of it is reused; only the size changes.
        rpr = run_rpr(ps[0])
        if "632423" not in rpr:
            sys.exit("title runs no longer carry the template's maroon")
        new = rewrite(tb, [
            para(ps[0], t, rpr, TITLE_SIZE)
            for t in (COURSE_NAME, COURSE_CODE, PROJECT_TITLE)
        ])
        return xml[: m.start()] + sp.replace(tb, new) + xml[m.end() :]
    sys.exit("title slide has no Course Name text box")


def fill_table(xml: str, ncols: int, values: dict[tuple[int, int], str],
               size: int | None = None, scheme: str | None = None) -> str:
    """Write values into cells of the slide's table, addressed (row, col)."""
    if "<a:tbl>" not in xml:
        sys.exit("slide has no table to fill")
    counter = [0]
    written = []

    def repl(m: re.Match) -> str:
        i = counter[0]
        counter[0] += 1
        r, c = divmod(i, ncols)
        val = values.get((r, c))
        if val is None:
            return m.group(0)
        tc = m.group(0)
        if "<a:endParaRPr" not in tc:
            sys.exit(f"cell ({r},{c}) has no endParaRPr to insert a run before")
        p = re.search(r"<a:p>.*?</a:p>", tc, re.S).group(0)
        body = para(p, val, run_rpr(p), size, scheme)
        written.append((r, c))
        return tc.replace(p, body, 1)

    out = re.sub(r"<a:tc>.*?</a:tc>", repl, xml, flags=re.S)
    missing = set(values) - set(written)
    if missing:
        sys.exit(f"cells never reached: {sorted(missing)}")
    return out


# The steps and sub-steps behind the four stages. Slide 10 gives the overview;
# these two lists are the detail, and they continue on two clones of slide 10.
# A line written as (text, True) is a stage heading and is set bold; every
# other property still comes from the template's own body paragraph.
# (title, lines) per clone, in deck order.
METHOD: list[tuple[str, list[str | tuple[str, bool]]]] = [
    ("Methodology: Ingest and Static Analysis", [
        ("Stage 1 - Ingest", True),
        "Receive the APK or AAB and detect which container it is.",
        "For an AAB, extract the base module and rescue its native libraries.",
        "Unpack with apktool; record the package hash and open its output tree.",
        ("Stage 2 - Static analysis, five surfaces", True),
        "Bytecode: jadx decompiles, then the 120 rules are matched over the result.",
        "Manifest: package identity, components and the network security config.",
        "Native: ELF structure, symbols and imports, de-duplicated across ABIs.",
        "Native bodies: capstone disassembles, Ghidra decompiles the chosen functions.",
        "JavaScript: Hermes bundles and the WebView bridge surfaces.",
        "Packer rules over the ELF sections, the assets and the manifest.",
        "Every match is attributed by package name - app code or vendor library.",
    ]),
    ("Methodology: Dynamic Verification and Reporting", [
        ("Stage 3 - Dynamic verification", True),
        "Start frida-server on the device; install and launch the app.",
        "Apply the root-bypass recipes so the app's own check can run.",
        "Apply the pinning-bypass scripts; capture traffic through mitmproxy.",
        "Drive the app with objection to reach the code that decides.",
        "Record what that check did: it accepted or refused the environment.",
        "A check never reached is reported as inconclusive, never as a negative.",
        ("Stage 4 - Reporting and audit", True),
        "Build the report from the stored run record, never from memory.",
        "State tool versions, the rule set, per-surface coverage and every label.",
        "Append the run and its written justification to the hash-chained log.",
    ]),
]

# A 2nd-review deck has to answer the 1st review's own comment on a slide of
# its own, rather than leave the panel to infer it. The comment is quoted as it
# was given; the two answers under it are the project's own recorded evidence -
# the per-target hook script every run stores, and the API level each device
# run read off the device itself (ADR-0028).
REVIEW_RESPONSE: tuple[str, list[str | tuple[str, bool]]] = (
    "Response to the 1st Review (08/08/2026)",
    [
        ("Comment received", True),
        "Shreyas Raybole, internal review guide: \"try to add custom frida",
        "scripts and supports till at least android 14\".",
        ("Custom Frida scripts - done", True),
        "The tool writes its own hook script for each target from the rules that",
        "matched, so the hooks follow the app rather than a fixed list.",
        ("Android 14 support - done", True),
        "7 runs recorded the device's own API level as 34 (Android 14).",
        "The dynamic stage succeeded on all 7; root was bypassed on 6 of them.",
        ("Also closed since that review", True),
        "12 reporting defects, each with its own decision note (ADR 0031-0042).",
    ],
)


def clone_slides(parts: dict[str, bytes], source: str, count: int) -> list[str]:
    """Clone one slide part `count` times and register each clone in the package.

    A slide part is reachable only through three declarations: its
    content-type override, a relationship from presentation.xml, and the
    sldIdLst entry naming that relationship. A part missing any one of them is
    a package PowerPoint offers to repair, so all three are written here and
    re-checked in verify_package before the file is written.
    """
    ct = parts["[Content_Types].xml"].decode("utf-8")
    rels = parts["ppt/_rels/presentation.xml.rels"].decode("utf-8")
    pres = parts["ppt/presentation.xml"].decode("utf-8")

    m = re.search(
        r'<Override PartName="/ppt/slides/slide\d+\.xml" ContentType="([^"]+)"', ct)
    if not m:
        sys.exit("[Content_Types].xml declares no slide part to copy the type from")
    slide_ct = m.group(1)

    m = re.search(
        r'<Relationship Id="rId\d+" Type="([^"]+)" Target="slides/slide\d+\.xml"', rels)
    if not m:
        sys.exit("presentation.xml.rels declares no slide relationship to copy")
    slide_rel = m.group(1)

    base = source.split("/")[-1]
    rels_src = f"ppt/slides/_rels/{base}.rels"
    if rels_src not in parts:
        sys.exit(f"{base} has no relationship part, so a clone would lose its layout")
    m = re.search(rf'<Relationship Id="(rId\d+)" Type="{re.escape(slide_rel)}"'
                  rf' Target="slides/{re.escape(base)}"', rels)
    if not m:
        sys.exit(f"no relationship in presentation.xml.rels points at {base}")
    anchor = m.group(1)

    created = []
    for _ in range(count):
        n = max(int(re.search(r"(\d+)", p.split("/")[-1]).group(1))
                for p in parts
                if re.fullmatch(r"ppt/slides/slide\d+\.xml", p)) + 1
        name = f"ppt/slides/slide{n}.xml"
        parts[name] = parts[source]
        parts[f"ppt/slides/_rels/slide{n}.xml.rels"] = parts[rels_src]

        rid = f"rId{max(int(x) for x in re.findall(r'Id=\"rId(\d+)\"', rels)) + 1}"
        rels = rels.replace(
            "</Relationships>",
            f'<Relationship Id="{rid}" Type="{slide_rel}"'
            f' Target="slides/slide{n}.xml"/></Relationships>')

        ct = ct.replace(
            "</Types>",
            f'<Override PartName="/{name}" ContentType="{slide_ct}"/></Types>')

        entry = re.search(rf'<p:sldId id="\d+" r:id="{anchor}"/>', pres)
        if not entry:
            sys.exit(f"presentation.xml lists no sldId for {anchor}")
        sid = max(int(x) for x in re.findall(r'<p:sldId id="(\d+)"', pres)) + 1
        pres = pres.replace(entry.group(0),
                            entry.group(0) + f'<p:sldId id="{sid}" r:id="{rid}"/>', 1)
        anchor = rid
        created.append(name)

    parts["[Content_Types].xml"] = ct.encode("utf-8")
    parts["ppt/_rels/presentation.xml.rels"] = rels.encode("utf-8")
    parts["ppt/presentation.xml"] = pres.encode("utf-8")
    return created


def verify_package(parts: dict[str, bytes]) -> None:
    """A cloned slide is only really in the deck if all three declarations agree."""
    ct = parts["[Content_Types].xml"].decode("utf-8")
    rels = parts["ppt/_rels/presentation.xml.rels"].decode("utf-8")
    pres = parts["ppt/presentation.xml"].decode("utf-8")

    slides = sorted(n for n in parts if re.fullmatch(r"ppt/slides/slide\d+\.xml", n))
    for n in slides:
        if f'PartName="/{n}"' not in ct:
            sys.exit(f"{n} has no content-type override; PowerPoint would repair it")
        if f'Target="{n.split("ppt/")[-1]}"' not in rels:
            sys.exit(f"{n} has no relationship in presentation.xml.rels")

    listed = re.findall(r'<p:sldId id="(\d+)" r:id="(rId\d+)"/>', pres)
    if len(listed) != len(slides):
        sys.exit(f"sldIdLst lists {len(listed)} slides; the package holds {len(slides)}")
    if len({i for i, _ in listed}) != len(listed):
        sys.exit("sldIdLst repeats a slide id")
    declared = set(re.findall(r'Id="(rId\d+)"', rels))
    for _, rid in listed:
        if rid not in declared:
            sys.exit(f"sldIdLst names {rid}, which no relationship declares")
    for n in slides:
        if f"ppt/slides/_rels/{n.split('/')[-1]}.rels" not in parts:
            sys.exit(f"{n} has no relationship part, so it would lose its layout")


def build(template: Path, out: Path) -> dict:
    with zipfile.ZipFile(template) as zf:
        parts = {n: zf.read(n) for n in zf.namelist()}

    slides = sorted(
        (n for n in parts if re.fullmatch(r"ppt/slides/slide\d+\.xml", n)),
        key=lambda n: int(re.search(r"(\d+)", n.split("/")[-1]).group(1)),
    )
    if len(slides) != 14:
        sys.exit(f"template has {len(slides)} slides; this build knows 14")

    # The template ships one Methodology slide (slide 10). The steps and
    # sub-steps behind its four stages do not fit one 356pt box, so they
    # continue on clones of slide 10 itself: a clone inherits the same layout,
    # master, header and footer, so the design stays the template's rather than
    # one this script draws.
    clones = clone_slides(parts, "ppt/slides/slide10.xml", len(METHOD) + 1)
    method = dict(zip(clones[: len(METHOD)], METHOD))
    method[clones[-1]] = REVIEW_RESPONSE
    slides = sorted(
        (n for n in parts if re.fullmatch(r"ppt/slides/slide\d+\.xml", n)),
        key=lambda n: int(re.search(r"(\d+)", n.split("/")[-1]).group(1)),
    )

    touched = 0
    for name in slides:
        n = int(re.search(r"(\d+)", name.split("/")[-1]).group(1))
        xml = parts[name].decode("utf-8")
        before = xml

        if n == 1:
            xml = set_title_slide_text(xml)
            # The band the table sits on is maroon, and the template's label
            # column is already white-on-maroon (schemeClr lt1). Its empty
            # value cells state a size and a typeface but no colour, which
            # renders black on that band, so the labels' own token is applied.
            xml = fill_table(xml, 2, {(r, 1): v for r, v in IDENTITY.items() if v},
                             scheme="lt1")
        elif name in method:
            title, lines = method[name]
            xml = set_body(set_title(xml, title), lines, size=METHOD_SIZE)
        elif n in BODY:
            xml = set_body(xml, BODY[n], size=BODY_SIZE)
        elif n == 6:
            # Columns 1-5 of each row; column 0 carries the template's own
            # Sr.No. A cell whose value is empty is left as the template has it.
            for col, field in enumerate(range(5), start=1):
                xml = fill_table(
                    xml, 6,
                    {(r + 1, col): row[field]
                     for r, row in enumerate(LITERATURE) if row[field]},
                    size=LITERATURE_SIZE,
                )
        elif n == 14:
            # The template's own instruction for this slide: references by
            # number in square brackets, IEEE format only.
            xml = set_body(
                xml, [f"[{i}] {r}" for i, r in enumerate(REFERENCES, 1)],
                size=REFERENCES_SIZE,
            )

        xml = xml.replace("<a:t>10-09-2025</a:t>",
                          f"<a:t>{PRESENTATION_DATE}</a:t>")
        if xml != before:
            touched += 1
        parts[name] = xml.encode("utf-8")

    verify_package(parts)

    out.parent.mkdir(parents=True, exist_ok=True)
    order = ["[Content_Types].xml"] + [n for n in parts if n != "[Content_Types].xml"]
    with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as zf:
        for name in order:
            zf.writestr(name, parts[name])
    return {
        "output": str(out),
        "bytes": out.stat().st_size,
        "parts": len(parts),
        "slides": len(slides),
        "slides_changed": touched,
        "bullets": sum(len(v) for v in BODY.values()),
        "body_size_pt": BODY_SIZE / 100,
        "title_size_pt": TITLE_SIZE / 100,
        "literature_rows": len(LITERATURE),
        "literature_cells_filled": sum(1 for row in LITERATURE for c in row[2:4] if c),
        "references": len(REFERENCES),
        "identity_cells_filled": sum(1 for v in IDENTITY.values() if v),
    }


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--template", type=Path, default=DEFAULT_TEMPLATE)
    ap.add_argument("--out", type=Path, default=DEFAULT_OUT)
    args = ap.parse_args()
    if not args.template.is_file():
        sys.exit(f"template not found: {args.template}")
    for k, v in build(args.template, args.out).items():
        print(f"  {k}: {v}")


if __name__ == "__main__":
    main()

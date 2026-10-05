# A Rule-Based Tool for Finding and Verifying Root Detection and SSL/TLS Pinning in Android Apps

@author Divyang Zinzuwadiya | B.Tech Computer Science and Engineering (Cyber Security) | Silver Oak University | Ahmedabad, India | divyangzinzuwadia1@gmail.com
@author Heta Vaghela | B.Tech Computer Science and Engineering (Cyber Security) | Silver Oak University | Ahmedabad, India | hetavaghela47@gmail.com
@author Harshita Rajput | B.Tech Computer Science and Engineering (Cyber Security) | Silver Oak University | Ahmedabad, India | harshita4907@gmail.com

@abstract Many Android apps try to make themselves hard to analyse. Two common defences are root detection, where the app refuses to work properly on a rooted phone, and certificate pinning, where the app refuses to accept the security certificate of a proxy that is inspecting its traffic. Both defences make security testing harder. They also create a measurement problem. A static scan can read an app's code and see that the code for a defence is present, but it cannot say whether that defence ever runs. This paper describes a tool that keeps those two questions apart. A set of 120 hand-written rules decides what is present, and no machine-learning model takes part in that decision. Every finding is labelled with how it was obtained: either matched by a rule, or confirmed by watching the app behave. A finding is only called confirmed after the app's own check has been exercised on a running device through Frida instrumentation, and the app's own logic has been seen to accept the analysis environment. The tool also records how much of each app surface it managed to scan, and it refuses to call a defence absent unless every surface that could hide it was fully scanned. The prototype is 54 Python modules with 26,258 lines of code, supported by 42,364 lines of tests. It has been run on 21 apps: the three OWASP UnCrackable targets and 18 real apps from public app stores, across 306 recorded runs. Measured against ground truth collected independently of the tool, precision, recall and F1 are all 1.00 on the apps that are fully covered and have a ground-truth entry (root detection: 6 apps, SSL pinning: 4 apps). That subset is small, so the numbers should be read as directional. The tool does not claim zero false positives.

@keywords Android security, root detection, certificate pinning, static analysis, dynamic analysis, Frida, rule-based detection, verification, empirical evaluation

## Introduction

### Why this problem is hard

Security analysts often need to look inside an Android app. They may need to see what data it sends, or whether it protects that data properly. Two defences get in the way, and both are common in real apps.

The first is root detection. An analyst works on a rooted phone or an emulator, because that is what allows the analysis tools to attach to a running app. Root detection exists to notice exactly that situation and to change the app's behaviour when it occurs.

The second is certificate pinning. To read an app's network traffic, an analyst usually places a proxy in the middle and gives the phone a certificate to trust. Pinning means the app accepts only one specific certificate and refuses anything else, including the analyst's.

These two defences are hard to get around, but they are not the main problem this paper is about. The main problem is that they are hard to *measure*. A static scan - reading the app's files without running it - can tell you that the strings, classes and library calls for root detection are present in the package. It cannot tell you whether the app ever acts on them.

That gap matters more than it sounds. Many apps include advertising or analytics libraries that check for root themselves and report the answer to their own servers. Those checks are not the app's own protection. A report that says "root detection found" for such an app has overstated what was actually measured, and it will do so for most apps on the market, because most apps bundle such a library.

This paper describes a tool built around one simple rule: a defence is only reported as confirmed when the app's own logic has been watched doing something specific.

### What this paper adds

1. **Rules decide, and nothing else decides.** The detection decision comes from 120 hand-written rules stored as versioned text files. The rules cover five surfaces: Java and Kotlin bytecode, native libraries, JavaScript bundles, the app's manifest, and packer signatures. No machine-learning model takes part in any detection decision.

2. **Every finding carries a label saying how it was obtained.** A finding is either matched by a rule, confirmed by dynamic verification, hypothesised but unverified, or hypothesised and then confirmed. These labels are never mixed together, in a report or in a score. A reader can tell a code match from an observed behaviour without reading the method section.

3. **Behaviour decides what is confirmed.** A rule match becomes a confirmed finding only after the dynamic stage has run the app and exercised its own check. Static analysis proposes; measurement decides.

4. **Negative results are bounded, not asserted.** The tool records which surfaces it actually scanned and how completely. If a surface that could hide a defence was not fully scanned, the tool does not report that defence as absent - it reports that it could not tell.

5. **Every run is logged and justified.** Each analysis needs a written authorization justification and is appended to a tamper-evident audit log. The versions of every tool used, the exact rule set, and the result are recorded with the run.

### How this paper is organised

Section II describes related work. Section III lists the design goals. Section IV explains how the tool works, and Section V how it is built. Section VI gives the measurements, including the parts of the corpus that had to be excluded and why. Section VII states what the tool does not do, and Section VIII concludes.

## Related Work

### Reading an app without running it

Static analysis of Android apps is a mature area. Androguard [3] provides the parsing and cross-reference tools that most later work builds on; this project uses it as one of its readers. DREBIN [4] showed that a broad set of features taken from the manifest and the bytecode can separate malware from ordinary apps at scale, and it established the feature-based approach that a hand-written rule set like ours makes explicit. FlowDroid [16] adds precise data-flow analysis, and PScout [15] mapped the permission system itself.

Our work differs from this line in what it claims. A feature-based or learned detector reports a likelihood across a population. This tool reports a verdict for one app, together with a label saying how that verdict was reached and a statement of how much of the app was scanned.

### Running an app, and the problem of evasion

TaintDroid [5] established runtime information-flow tracking on Android and remains the clearest demonstration of what running an app can show that reading it cannot. A second line of work studies the defences this paper is aimed at. Petsas et al. [9] catalogued the anti-emulation and anti-analysis tricks that make dynamic analysis difficult, and Rasthofer et al. [10] showed how to collect runtime values from apps that use those tricks. Poeplau et al. [11] analysed dynamic code loading, which is one way an app can keep parts of itself out of static view.

Two lessons come from this work. First, observation of the running app is stronger evidence than reading its code. Second, the observation itself can be defeated. Our response is not to defeat evasion in general. It is to refuse to certify what was not observed: an app that never runs its check produces an inconclusive result, not a negative one.

### Certificate pinning in practice

Fahl et al. [6] measured how Android apps validate TLS connections and how often that validation fails, and [7] looked at the same problem as a development-practice issue. Sounthiraraj et al. [8] automated the detection of man-in-the-middle weaknesses at scale. This work established both that pinning is widely deployed and that it is often deployed badly. That is why a report saying only "pinning present" has limited value, and why this tool separates the presence of pinning code from an observed pinning decision.

### Why machine learning is not used for detection

Learning-based detection is an active field. VulDeePecker [12] and Devign [13] apply deep learning to vulnerability detection, and large language models trained on code [14] have made code-level reasoning widely available. We expect to use such models for the analyst-facing tasks this project plans next: explaining a finding, suggesting where a defence is enforced, and drafting instrumentation.

They are not used to decide detections, and the reason is practical rather than philosophical. A detector whose answer cannot be broken down into a reviewable rule cannot produce a per-finding audit trail, cannot be pinned to a version in a way that makes a re-run reproducible, and cannot tell the difference between "this pattern is absent" and "this pattern is unfamiliar". The tool therefore keeps detection on rules and reserves learned components for tasks where a wrong answer is a bad draft rather than a wrong finding. This ordering was chosen before any learned component was written, and it is why Section VI can state its limits precisely.

## Design Goals

Four goals shaped the design. Each is stated with the failure it is meant to prevent.

**G1 - One source of truth for detection.** The decision must come from rules a person can read and change. This prevents a detection that cannot be explained or audited.

**G2 - No mixed-up confidence.** A rule match and an observed behaviour must never be reported as the same kind of fact. This prevents a report in which a bundled library's code reads as the app's own protection.

**G3 - Negatives are bounded, not asserted.** A negative answer must come with the coverage that produced it, and must be left out of the measurements when that coverage is not enough. This prevents absence of evidence being reported as evidence of absence.

**G4 - Every run is an accountable act.** Each run needs a written justification and leaves an unchangeable record. This prevents a dual-use tool from leaving no trace of who ran it, on what, and why.

One further goal governs the order of the whole project: **the deterministic part must work end to end on real targets before any learned component is built.** This prevents the common failure of building several unproven capabilities at once and ending with a demonstration that works only on test fixtures.

## How the Tool Works

### Four stages

Analysis runs through four stages in order: reading the package, static analysis, dynamic verification, and reporting. Each stage returns a result object that says whether it succeeded, what evidence it produced, and what went wrong if it failed. A stage that fails stops the pipeline and says so. There are no mocked results, no placeholder implementations and no silent fallbacks at any point, including during development. An empty result is recorded as empty, and a cause that was not measured is never invented.

### The rule set

Detection uses 120 hand-written rules stored as versioned YAML text files: 49 for root detection, 51 for SSL/TLS pinning, 12 for native-code indicators, and 8 for packer signatures. Table I lists them.

| The rule set by category
| Category | Rules | Main surface |
| Root detection | 49 | bytecode, manifest, native |
| SSL/TLS pinning | 51 | bytecode, native, manifest, JS |
| Native indicators | 12 | ELF sections, symbols, imports |
| Packer signatures | 8 | ELF sections, assets, manifest |
| Total | 120 | five surfaces |

Each rule has an identifier, a category, a weight, a pattern type and one or more patterns. Rules are matched against the matching surface during the static stage: native rules are matched against ELF structure, symbol tables, imported functions and section entropy, and packer rules against native library names, embedded app identifiers and asset layout.

### Labels that say how a finding was obtained

Every finding carries one of four labels: matched by a rule; confirmed by observation; hypothesised and unverified; or hypothesised and confirmed. The labels are not decoration. A rule match is a statement about what is inside the package. A confirmed finding is a statement about how the app behaves. Presenting the first as the second is wrong in a way no confidence score can repair, so the label is required on every finding and is never merged with another.

### Whose code is it?

A rule that matches inside a third-party library is not by itself evidence that the app protects itself. The tool therefore attributes each match by package name: a match whose name resolves to a known vendor or platform library is recorded as a third-party indicator, and reports separate the app's own protection from a bundled library's. This is what makes goal G2 hold in practice, and it applies to both root detection and pinning.

### Knowing how much was scanned

For each category the tool records which surfaces it scanned and whether each scan was complete. Root detection can be hidden in the bytecode, native code or JavaScript; pinning can be hidden in those three plus the manifest. A surface counts as complete only when the tool that scans it ran successfully and its output was not cut short or empty for some reason other than genuinely having nothing in it.

A negative answer is only accepted as a true negative when every surface for that category was completely scanned. Otherwise that app is left out of the precision and recall measurement. This rule is deliberately strict, and it throws away a large number of otherwise usable negatives. It is the direct implementation of goal G3, and Section VI reports what it costs.

### Checking behaviour with Frida

The dynamic stage instruments the running app with Frida and drives it with objection, exercising the app's own protection logic rather than a substitute for it. Two outcomes matter. For root detection, the stage records whether the app's own root check is answered with a "not rooted" result - that is, whether the app's logic accepted the analysis environment. For pinning, it records whether the app's pin check accepts a connection it would otherwise reject, and whether a TLS handshake completes under instrumentation.

The rule here is that verification is empirical. The tool records what the app's own check did, not what a bypass script claims to have done. If the check was never reached during the run, the result is inconclusive, and that is what the report says.

### Authorization and audit

Every run needs an authorization justification from a fixed list: an app you own, a capture-the-flag target, an academic training target, or an identified authorized engagement. The justification, the operator's identity, the tool versions, the exact rule set and the results are appended to a hash-chained audit log, where each record is linked to the one before it. Editing, deleting or reordering a record breaks the chain and is detectable. Maintenance commands that rewrite previously stored reports are audited in the same way, for the same reason: a bulk rewrite of published analysis output is exactly the kind of act an audit trail exists to record.

## Implementation

### Languages and tools

The tool is written in Python 3.11 or later, with dependencies locked by `uv` so the analysis environment is identical on different machines. Static reading uses androguard for bytecode and the binary manifest, pyelftools for ELF structure and symbols, and capstone for native disassembly. jadx and apktool provide decompiled Java and decoded resources, aapt2 gives the package identity, and Ghidra in headless mode decompiles selected native functions. Dynamic work uses Frida and objection against frida-server on the device, with mitmproxy for watching traffic. Results are stored with SQLAlchemy over SQLite, and reports are rendered from templates. Table II gives the size.

| Size of the prototype (measured)
| Component | Files | Lines of code |
| Source (pipeline, stages, CLI) | 54 | 26,258 |
| Rule set (YAML) | 4 | 2,139 |
| Tests | - | 42,364 |

### Native code and JavaScript

Native code gets first-class treatment, because the defences studied here are often written in C or C++ precisely to make them harder to read. The tool parses ELF structure, resolves symbols and imports, removes duplicate copies of the same library across CPU architectures, disassembles function bodies with capstone, and calls Ghidra in headless mode to decompile selected functions. Two limits are recorded rather than hidden. A native library with its symbols stripped gives structural and string indicators but no verified function-level attribution. A library too large for the analysis host's memory gives a partial scan of that surface, which under Section IV-E removes the app from negative certification.

JavaScript is handled explicitly. Bundles, including Hermes bytecode, are scanned for root-check and pinning patterns, and WebView bridge surfaces are listed from the manifest and decoded resources.

### Reports

Reports are generated from the stored run record, not from whatever was in memory during the run. This means a report can be rebuilt from its own row, and a stored report can be checked against the row that produced it. Each report records the tool versions actually used, the exact rule set, the coverage of each surface, the label on every finding, and what the dynamic stage observed. Because a report names the code revision that rendered it, a regenerated report is a new artefact and is labelled as such rather than passed off as the original.

## Results

### Setup and corpus

The reference environment is a WSL2 Ubuntu 24.04 machine with four virtual CPUs and 11 GB of memory, attached to an Android emulator, with the Android tools pinned to the versions given in Section V-A. The corpus is 21 packages: three OWASP UnCrackable targets (Levels 1 to 3), which provide the main end-to-end validation, and 18 real apps from public app stores. Across these packages the tool has recorded 306 runs and produced 339 reports. The audit log holds 983 linked records.

Ground truth is collected independently of the tool and is attached to a package, not to a run. The measurement uses one datapoint per package - that package's most recent run - because precision and recall describe how a detector performs on an app, not how many times the app was re-analysed. Counting every run would weight the result by how often an app happened to be re-run.

### How often the app's own check accepted the environment

Table III reports the confirmation rate: among runs where a category was predicted present and the dynamic stage actually executed, the fraction in which the app's own check was seen to accept the instrumented environment.

| Dynamic confirmation (runs where verification executed)
| Category | Confirmed | Not confirmed | Rate |
| Root detection | 80 | 0 | 1.00 |
| SSL/TLS pinning | 10 | 0 | 1.00 |

This rate is a lower bound on precision, not a measurement of it, and the tool's own report says so. A run counted as "not confirmed" is ambiguous: it could be a genuine false positive, or a genuine detection whose bypass simply failed to run. The bypass outcome alone cannot separate the two. The rate is therefore reported as what it is - the fraction of instrumented runs in which the app's own logic accepted the analysis environment - and precision is measured separately in Section VI-C against independent ground truth.

### Precision and recall against ground truth

| Precision, recall and F1 against independently collected ground truth (one datapoint per package)
| Category | TP | FP | FN | TN | P/R/F1 | n |
| Root detection | 5 | 0 | 0 | 1 | 1.00/1.00/1.00 | 6 |
| SSL/TLS pinning | 2 | 0 | 0 | 2 | 1.00/1.00/1.00 | 4 |

The measured subset is small, and the tool's own output says so. Two kinds of exclusion account for the rest of the corpus. First, packages with no independent ground-truth entry for a category are left out: four packages for root detection and four for pinning. Second, and more significant, packages whose surface was only partly scanned - or whose negative came from incomplete coverage - are left out, because a negative from an incomplete scan is not proof that the defence is absent: nine packages for root detection and eleven for pinning.

These exclusions are the honest cost of goal G3. A detector willing to count a negative from an incomplete scan as a true negative would report a larger and much less meaningful result. This tool declines to do that, and reports the decline next to the number.

### What could not be measured

Several limits were observed while running the corpus, and they are worth reporting because they describe the tool's boundaries rather than its successes. Apps with symbol-stripped native pinning code give native structural and string indicators but no function-level attribution. One app whose native code exceeded the analysis host's memory produced a partial native scan and was correctly excluded from negative certification instead of being reported as clean. An app built with a cross-platform runtime whose ahead-of-time compiled payload cannot be analysed by the available tools gives a partial JavaScript and native coverage, which again removes its categories from negative certification. In every one of these cases the report states the limit, and in none of them does it report a negative.

### Limits of these measurements

Three limits matter. The corpus is small: 21 packages, and a measured subset of six for root detection and four for pinning after exclusions, which makes a single wrongly labelled ground-truth entry significant. The ground truth is entered by hand, so a wrong entry produces a wrong contribution to precision or recall; one mislabelled package was in fact found and corrected during this work, which is a reminder that the measurement rests on manual data. Finally, the confirmation rate depends on the instrumentation succeeding against each defence, so its value of 1.00 describes the runs where verification executed and not the corpus as a whole.

## What the Tool Does Not Do

The tool does not claim zero false positives. It cannot: the measured subset is small, its ground truth is maintained by hand, and the confirmation rate mixes up detection failure with bypass failure. What it claims instead is narrower. Every finding carries a label saying how it was obtained and a statement of how much of the app was scanned. Every negative is either certified under complete coverage or excluded. Every run is justified, version-pinned and written to a tamper-evident log. Those properties are what allow Section VI to state its own limits precisely, and they are why a reader can tell a finding the tool observed from one it merely matched.

Three further limits are worth stating. The prototype covers only the deterministic part; the planned learning-based components are deliberately left for later, and the labelling machinery exists partly so they can be added without ever gaining the authority to decide a detection. Coverage is limited by symbol-stripped native code, ahead-of-time compiled cross-platform payloads, and native libraries larger than the analysis host can handle; each is handled by recording the limit rather than by pretending the surface was scanned. Finally, the rule set is hand-written, so its quality depends on the person maintaining it, and a rule that is wrong produces a wrong match rather than a statistical error that averages out.

## Conclusion and Next Steps

This paper described an Android analysis tool that treats root detection and certificate pinning as measurement problems rather than pattern-matching problems. Its detection decisions come from 120 hand-written rules covering five surfaces. Its findings carry a label that separates a code match from an observed behaviour. Its negatives are certified only when every surface that could hide the defence was fully scanned. Its runs are authorized, pinned to tool versions, and audited. Run against the OWASP UnCrackable targets and 18 further real apps over 306 runs, it measures precision, recall and F1 of 1.00 on the small subset that is fully covered and independently ground-truthed, and it reports the exclusions that define that subset.

The next steps follow the same order. Within the deterministic part, the priorities are wider native coverage and a larger independently ground-truthed corpus, since the size of the measured subset is what limits the strength of any precision claim. Beyond it, the planned learning-based components - suggesting hypotheses from decompiled code, writing the narrative of a report, and drafting instrumentation - will be added strictly after detection, run in a sandbox, and gated behind human review before any generated instrumentation is trusted, so that the labelling discipline of the deterministic core is preserved.

## Acknowledgment

The authors thank the faculty reviewers of the project for their guidance during the review process.

## References

[1] OWASP Foundation, "OWASP Mobile Security Testing Guide," 2024. [Online]. Available: https://owasp.org/www-project-mobile-security-testing-guide/
[2] OWASP Foundation, "Mobile Application Security Verification Standard (MASVS)," version 2.1, 2024. [Online]. Available: https://mas.owasp.org/MASVS/
[3] A. Desnos, "Androguard: Reverse engineering, malware and goodware analysis of Android applications," 2011. [Online]. Available: https://github.com/androguard/androguard
[4] D. Arp, M. Spreitzenbarth, M. Hubner, H. Gascon, and K. Rieck, "DREBIN: Effective and explainable detection of Android malware in your pocket," in Proc. Network and Distributed System Security Symposium (NDSS), 2014.
[5] W. Enck, P. Gilbert, B.-G. Chun, L. P. Cox, J. Jung, P. McDaniel, and A. N. Sheth, "TaintDroid: An information-flow tracking system for realtime privacy monitoring on smartphones," in Proc. 9th USENIX Symp. Operating Systems Design and Implementation (OSDI), 2010.
[6] S. Fahl, M. Harbach, T. Muders, L. Baumgartner, B. Freisleben, and M. Smith, "Why Eve and Mallory love Android: An analysis of Android SSL (in)security," in Proc. ACM Conf. Computer and Communications Security (CCS), 2012.
[7] S. Fahl, M. Harbach, H. Perl, M. Koetter, and M. Smith, "Rethinking SSL development in an appified world," in Proc. ACM SIGSAC Conf. Computer and Communications Security (CCS), 2013.
[8] D. Sounthiraraj, J. Sahs, G. Greenwood, Z. Lin, and L. Khan, "SMV-HUNTER: Large scale, automated detection of SSL/TLS man-in-the-middle vulnerabilities in Android apps," in Proc. Network and Distributed System Security Symposium (NDSS), 2014.
[9] T. Petsas, G. Voyatzis, E. Athanasopoulos, M. Polychronakis, and S. Ioannidis, "Rage against the virtual machine: Hindering dynamic analysis of Android malware," in Proc. 7th European Workshop on System Security (EuroSec), 2014.
[10] S. Rasthofer, S. Arzt, M. Miltenberger, and E. Bodden, "Harvesting runtime values in Android applications that feature anti-analysis techniques," in Proc. Network and Distributed System Security Symposium (NDSS), 2016.
[11] S. Poeplau, Y. Fratantonio, A. Bianchi, C. Kruegel, and G. Vigna, "Execute this! Analyzing unsafe and malicious dynamic code loading in Android applications," in Proc. Network and Distributed System Security Symposium (NDSS), 2014.
[12] Z. Li, D. Zou, S. Xu, X. Ou, H. Jin, S. Wang, Z. Deng, and Y. Zhong, "VulDeePecker: A deep learning-based system for vulnerability detection," in Proc. Network and Distributed System Security Symposium (NDSS), 2018.
[13] Y. Zhou, S. Liu, J. Siow, X. Du, and Y. Liu, "Devign: Effective vulnerability identification by learning comprehensive program semantics via graph neural networks," in Proc. Advances in Neural Information Processing Systems (NeurIPS), 2019.
[14] M. Chen, J. Tworek, H. Jun, Q. Yuan, H. P. de Oliveira Pinto, J. Kaplan, et al., "Evaluating large language models trained on code," arXiv:2107.03374, 2021.
[15] K. W. Y. Au, Y. F. Zhou, Z. Huang, and D. Lie, "PScout: Analyzing the Android permission specification," in Proc. ACM Conf. Computer and Communications Security (CCS), 2012.
[16] S. Arzt, S. Rasthofer, C. Fritz, E. Bodden, A. Bartel, J. Klein, Y. Le Traon, D. Octeau, and P. McDaniel, "FlowDroid: Precise context, flow, field, object-sensitive and lifecycle-aware taint analysis for Android apps," in Proc. ACM SIGPLAN Conf. Programming Language Design and Implementation (PLDI), 2014.

# Environment Setup Log

> Generated: 2026-07-27
> Machine: WSL2 Ubuntu 24.04 (4 vCPU / 11 GB RAM / RTX 5070)

---

## 1. Python Environment

| Tool | Version | Installed? |
|------|---------|------------|
| Python | 3.12.3 | Pre-installed |
| pip | 24.0 | Pre-installed |
| uv | 0.11.29 | Pre-installed |
| Ollama | 0.24.0 | Pre-installed (not running) |

### Commands

```bash
# Create venv and install deps
cd ~/Testing/Final_Year_Minor_Project
uv sync

# Verify
uv run python --version
# → Python 3.12.3
```

### Installed packages (via `uv sync`)

```
annotated-doc==0.0.4
frida==17.16.4
iniconfig==2.3.0
jinja2==3.1.6
markdown-it-py==4.2.0
markupsafe==3.0.3
mdurl==0.1.2
packaging==26.2
pluggy==1.6.0
pygments==2.20.0
pytest==9.1.1
pyyaml==6.0.3
rich==15.0.0
shellingham==1.5.4
typer==0.27.0
```

---

## 2. Unit Tests

```bash
uv run pytest tests/ -v
# → 40 passed in 0.34s
```

All 40 tests pass.

---

## 3. Android Toolchain

| Tool | Version | Status |
|------|---------|--------|
| Java (JDK) | OpenJDK 21.0.11 | Pre-installed |
| apktool | 3.0.1 | Pre-installed |
| aapt2 | 2.19-debian | Pre-installed |
| jadx | 1.5.1 | Downloaded from GitHub |
| ADB | 1.0.41 | Pre-installed |
| frida | 17.16.4 | via uv |
| frida-tools | 14.10.4 | via uv |
| objection | latest | via `uv pip install` |
| mitmproxy | 8.1.1 | via apt |

### Commands

```bash
# Install jadx (not in apt — downloaded from GitHub)
cd /tmp
wget -q https://github.com/skylot/jadx/releases/download/v1.5.1/jadx-1.5.1.zip
unzip -q jadx-1.5.1.zip -d jadx
sudo mv jadx/bin/jadx /usr/local/bin/
rm -rf jadx jadx-1.5.1.zip
cd ~/Testing/Final_Year_Minor_Project

# Install mitmproxy
sudo apt install mitmproxy -y

# Install objection (inside project venv)
uv pip install objection

# Create output directories
mkdir -p outputs/{apks,analysis,reports}
```

---

## 4. Emulator & Frida

| Item | Status |
|------|--------|
| Emulator device | ✅ emulator-5554 (sdk_gphone64_x86_64) |
| Root access | ✅ `su` works |
| frida-server | Already on device at `/data/local/tmp/frida-server` (v17.16.2, running PID 17800) |

### Frida version notes

- **Host frida client:** 17.16.4
- **Device frida-server:** 17.16.2 (minor mismatch, functionally compatible)

### ADB connection

```bash
# Verify device
adb devices -l
# → emulator-5554          device product:sdk_gphone64_x86_64
```

---

## 5. Pipeline Run — OWASP UnCrackable-Level1

```bash
# Download APK
wget -O /tmp/uncrackable1.apk https://github.com/OWASP/owasp-mastg/raw/master/Crackmes/Android/Level_01/UnCrackable-Level1.apk

# Full pipeline (static only)
PYTHONPATH=src uv run python -m cli --apk /tmp/uncrackable1.apk --justification ACADEMIC_TRAINING_TARGET --skip-dynamic
```

### Results

| Stage | Status | Time |
|-------|--------|------|
| ingest | ✅ OK | 122-172ms |
| audit | ✅ OK | 0ms |
| decompile | ✅ OK | 0-11279ms |
| static_scan | ✅ OK | 3ms |
| manifest_parse | ✅ OK | 0ms |
| decision_engine | ✅ OK | 0ms |
| dynamic | ⏭️ SKIPPED | 0ms |
| report | ✅ generated | — |

**Decision:** NEITHER (threshold 0.7)
- Root confidence: 0.20 (Inconclusive — 1 signature matched: `root_build_tags_test_keys`)
- SSL confidence: 0.00 (Inconclusive)

### ADB install issue & fix

```bash
# Error: INSTALL_FAILED_UPDATE_INCOMPATIBLE (existing APK with different signature)
adb -s emulator-5554 uninstall owasp.mstg.uncrackable1
adb -s emulator-5554 install /tmp/uncrackable1.apk
```

---

## 6. CLI Usage Reference

```bash
# Show help
PYTHONPATH=src uv run python -m cli --help

# Run with dynamic bypass (requires emulator with frida-server)
PYTHONPATH=src uv run python -m cli --apk <path> --justification ACADEMIC_TRAINING_TARGET

# Run static-only (skip Frida)
PYTHONPATH=src uv run python -m cli --apk <path> --justification ACADEMIC_TRAINING_TARGET --skip-dynamic

# Run against specific target success-check
PYTHONPATH=src uv run python -m cli --apk <path> --justification ACADEMIC_TRAINING_TARGET --target uncrackable1

# Run with specific device
PYTHONPATH=src uv run python -m cli --apk <path> --justification ACADEMIC_TRAINING_TARGET --device emulator-5554
```

### Justification values
- `OWN_APP` — your own application
- `CTF` — capture-the-flag challenge
- `AUTHORIZED_ENGAGEMENT:<id>` — penetration test with authorization ID
- `ACADEMIC_TRAINING_TARGET` — academic/educational use

---

## 7. Test APKs

| Target | Path | Size |
|--------|------|------|
| UnCrackable-Level1 | `/tmp/uncrackable1.apk` | 65 KB |
| UnCrackable-Level2 | `/tmp/uncrackable2.apk` | 880 KB |
| UnCrackable-Level3 | `/tmp/uncrackable3.apk` | 1.4 MB |

### Download commands

```bash
wget -O /tmp/uncrackable1.apk https://github.com/OWASP/owasp-mastg/raw/master/Crackmes/Android/Level_01/UnCrackable-Level1.apk
wget -O /tmp/uncrackable2.apk https://github.com/OWASP/owasp-mastg/raw/master/Crackmes/Android/Level_02/UnCrackable-Level2.apk
wget -O /tmp/uncrackable3.apk https://github.com/OWASP/owasp-mastg/raw/master/Crackmes/Android/Level_03/UnCrackable-Level3.apk
```

---

## 8. Output Structure

```
outputs/
├── analysis/<sha256>/       — per-APK analysis artifacts
├── apks/                    — APK storage
├── reports/                 — generated report .md files
└── audit_log.jsonl          — authorization audit trail
```

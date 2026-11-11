#!/usr/bin/env python3
"""Compile the technical manual with the pinned, separately installed Typst CLI."""

import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
TYPST_VERSION = "0.15.1"


def main() -> int:
    executable = shutil.which("typst")
    if executable is None:
        print("Falta Typst CLI. Instala 0.15.1 según docs/DEVELOPMENT.md.", file=sys.stderr)
        return 1
    version = subprocess.run([executable, "--version"], capture_output=True, text=True, check=True)
    parts = version.stdout.split()
    if len(parts) < 2 or parts[1] != TYPST_VERSION:
        print(
            f"Se requiere Typst {TYPST_VERSION}; encontrado: {version.stdout.strip()}",
            file=sys.stderr,
        )
        return 1
    output = ROOT / "build" / "docs" / "manual-tecnico.pdf"
    output.parent.mkdir(parents=True, exist_ok=True)
    subprocess.run(
        [
            executable,
            "compile",
            "--root",
            str(ROOT),
            str(ROOT / "docs" / "typst" / "manual.typ"),
            str(output),
        ],
        cwd=ROOT,
        check=True,
    )
    print(f"OK: {output.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

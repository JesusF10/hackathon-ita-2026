#!/usr/bin/env python3
"""Validate local Markdown file links and the documented repository skeleton."""

import re
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit

ROOT = Path(__file__).resolve().parent.parent
REQUIRED = (
    "TODO.md",
    "CHANGELOG.md",
    "pyproject.toml",
    "uv.lock",
    ".python-version",
    "docs/typst/README.md",
    "docs/typst/manual.typ",
    "docs/typst/chapters/architecture.typ",
    "docs/typst/chapters/implementation.typ",
    "docs/typst/chapters/ai-engineering.typ",
    "docs/typst/chapters/verification.typ",
    "scripts/build_docs.py",
    "docs/decisions/0001-base-de-desarrollo.md",
    "README.md",
    "AGENTS.md",
    "CLAUDE.md",
    "CONTRIBUTING.md",
    "SECURITY.md",
    "docs/README.md",
    "docs/EVENT.md",
    "docs/PRODUCT.md",
    "docs/DEVELOPMENT.md",
    "docs/DECISIONS.md",
    "docs/ARCHITECTURE.md",
    "docs/DATA.md",
    "docs/ASSISTANT.md",
    "docs/TESTING.md",
    "docs/OPERATIONS.md",
    "docs/ROADMAP.md",
    "docs/DEMO.md",
    "docs/decisions/README.md",
    "docs/templates/ADR.md",
    "docs/templates/TASK.md",
    "apps/web/README.md",
    "services/api/README.md",
    "services/assistant/README.md",
    "packages/contracts/README.md",
    "data/sources/README.md",
    "data/fixtures/README.md",
    "infra/README.md",
    "scripts/README.md",
    "tests/README.md",
    "tests/evaluation/README.md",
)
EXCLUDED = {".git", ".agents", ".codex", ".aws", "node_modules", ".venv", "vendor"}


def main() -> int:
    errors = []
    for relative in REQUIRED:
        if not (ROOT / relative).is_file():
            errors.append("Falta archivo: " + relative)
    documents = [
        p
        for p in ROOT.rglob("*.md")
        if not any(part in EXCLUDED for part in p.relative_to(ROOT).parts)
    ]
    for path in sorted(documents):
        content = path.read_text(encoding="utf-8")
        # This deliberately checks only inline links, not anchors or reference links.
        content = re.sub(r"```.*?```", "", content, flags=re.DOTALL)
        for match in re.finditer(r"!?\[[^\]\n]*\]\(([^\s)]+)\)", content):
            destination = match.group(1).strip("<>")
            parsed = urlsplit(destination)
            if parsed.scheme or parsed.netloc or not parsed.path:
                continue
            target = (path.parent / unquote(parsed.path)).resolve()
            if target != ROOT and ROOT not in target.parents:
                errors.append(
                    f"{path.relative_to(ROOT)}: enlace fuera del repositorio: {destination}"
                )
            elif not target.exists():
                errors.append(f"{path.relative_to(ROOT)}: enlace roto: {destination}")
    if errors:
        print("\n".join(errors), file=sys.stderr)
        return 1
    print(f"OK: {len(documents)} archivos Markdown; enlaces locales y estructura mínima válidos.")
    return 0


if __name__ == "__main__":
    sys.exit(main())

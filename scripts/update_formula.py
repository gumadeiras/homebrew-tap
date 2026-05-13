#!/usr/bin/env python3
from __future__ import annotations

import argparse
import re
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Update a Homebrew formula URL and checksum."
    )
    parser.add_argument("--formula", type=Path, required=True)
    parser.add_argument("--url", required=True)
    parser.add_argument("--sha256", required=True)
    return parser.parse_args()


def replace_once(text: str, pattern: str, replacement: str, label: str) -> str:
    updated, count = re.subn(pattern, replacement, text, count=1, flags=re.MULTILINE)
    if count != 1:
        raise ValueError(f"could not update formula {label}")
    return updated


def update_formula(text: str, url: str, sha256: str) -> str:
    text = replace_once(text, r'^  url "[^"]+"$', f'  url "{url}"', "url")
    text = replace_once(text, r'^  sha256 "[0-9a-f]+"$', f'  sha256 "{sha256}"', "sha256")
    return re.sub(r"\n  revision \d+\n", "\n", text, count=1)


def main() -> int:
    args = parse_args()
    if not re.fullmatch(r"[0-9a-f]{64}", args.sha256):
        raise ValueError("sha256 must be a 64-character lowercase hex digest")

    text = args.formula.read_text(encoding="utf-8")
    updated = update_formula(text, args.url, args.sha256)
    if updated != text:
        args.formula.write_text(updated, encoding="utf-8")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

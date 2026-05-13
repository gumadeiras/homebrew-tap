# AGENTS.md

## Git

- Commit with global `committer "<subject>" -- <path>...`; this repo does not ship `scripts/committer`.
- Use `--body` or `--body-file` for commit bodies.

## Formula Updates

- Keep formula changes scoped to `Formula/*.rb` and supporting tap scripts.
- Prefer `scripts/update_formula.py` for URL and checksum updates.
- Do not hand-edit generated release URLs/checksums when upstream automation should do it.
- Keep formula tests lightweight and deterministic; prefer `--version`, `--help`, or offline smoke checks.
- For package-specific behavior, read that package repo's `AGENTS.md` before changing the formula.

## Release Notes

- This tap does not need changelog entries for routine formula bumps.
- User-visible install behavior changes should be documented in `README.md`.

# homebrew-tap

Homebrew tap for [hihenen](https://github.com/hihenen) tools.

## Install

```bash
brew install hihenen/tap/knock
```

## Formulae

| Formula | Description |
|---------|-------------|
| [knock](https://github.com/hihenen/knock) | Desktop approval / annotation / question gate for AI coding agents — Tauri native window, OS notification, keyboard nav. |

## Notes

- `knock` is **Apple Silicon (arm64) only** for now (released binary is arm64).
- Homebrew handles Gatekeeper quarantine automatically — no "damaged / unverified" prompt.
- `knock` is a **CLI tool**: run it with arguments (`knock annotate <md>` / `knock ask <json>`), not by double-clicking.

# pico-flakes

Nix flake templates for Raspberry Pi Pico development.

## Dev shells

| Name | Language | Includes |
|------|----------|----------|
| `c`   | C/C++ | cmake, gcc-arm-embedded, pico-sdk, picotool, openocd, minicom |
| `python` | Python   | mpremote, picotool, minicom |

## Usage

Example for c:
```bash
nix flake init -t github:J0schu/pico-flakes#c
```

List available templates:
```bash
nix flake show github:J0schu/pico-flakes
```

Requires Nix with flakes enabled.

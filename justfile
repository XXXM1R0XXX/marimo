# Catppuccin for Marimo — Build Commands
#
# Dependencies: whiskers (https://github.com/catppuccin/whiskers), just (https://github.com/casey/just)
#
# Install whiskers:
#   brew install catppuccin/tap/whiskers
#
# Install just:
#   cargo install just

default:
    @just --list

# Build a specific theme combination (default: latte + mocha)
build light_flavor="latte" dark_flavor="mocha":
    whiskers templates/marimo.tera \
        --overrides '{"light_flavor": "{{light_flavor}}", "dark_flavor": "{{dark_flavor}}"}' \
        > "themes/catppuccin-{{light_flavor}}-{{dark_flavor}}.css"

# Build with a custom monospace font
# Font names with spaces must be quoted in CSS. Use single quotes around the
# entire value and double quotes for individual font names:
#   just build-font latte mocha '"Comic Code Ligatures", "Fira Mono", monospace'
build-font light_flavor="latte" dark_flavor="mocha" monospace_font='"Comic Code Ligatures", monospace':
    #!/usr/bin/env bash
    set -euo pipefail
    LF="{{light_flavor}}"
    DF="{{dark_flavor}}"
    MF='{{monospace_font}}'
    tmpfile=$(mktemp)
    whiskers templates/marimo.tera \
        --overrides "{\"light_flavor\": \"${LF}\", \"dark_flavor\": \"${DF}\", \"monospace_font\": \"PLACEHOLDER\"}" \
        > "${tmpfile}"
    sed -i '' "s|PLACEHOLDER|${MF}|g" "${tmpfile}"
    mv "${tmpfile}" "themes/catppuccin-${LF}-${DF}.css"

# Build all standard theme combinations
build-all:
    just build latte frappe
    just build latte macchiato
    just build latte mocha

# Clean generated theme files
clean:
    rm -rf themes/catppuccin-*.css
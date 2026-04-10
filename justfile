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

# Build all standard theme combinations
build-all:
    just build latte frappe
    just build latte macchiato
    just build latte mocha

# Clean generated theme files
clean:
    rm -rf themes/catppuccin-*.css
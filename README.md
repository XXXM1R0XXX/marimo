<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/marimo-team/marimo">Marimo</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/marimo/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/marimo?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/marimo/issues"><img src="https://img.shields.io/github/issues/catppuccin/marimo?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/marimo/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/marimo?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte + 🪴 Frappé</summary>
<img src="assets/latte-frappe.webp"/>
</details>
<details>
<summary>🌻 Latte + 🌺 Macchiato</summary>
<img src="assets/latte-macchiato.webp"/>
</details>
<details>
<summary>🌻 Latte + 🌿 Mocha</summary>
<img src="assets/latte-mocha.webp"/>
</details>

## Usage

Marimo supports custom CSS themes via the `css_file` parameter or the `custom_css` user configuration. Catppuccin for Marimo provides three CSS files, each combining the light Latte palette with one of the three dark palettes (Frappé, Macchiato, or Mocha).

### Per-notebook (recommended)

Pass a CSS file to your `marimo.App` instance:

```python
import marimo

app = marimo.App(css_file="catppuccin-latte-mocha.css")
```

### Global user configuration

Add the theme to your `~/.marimo.toml`:

```toml
[display]
custom_css = ["/path/to/catppuccin-latte-mocha.css"]
```

### Available themes

| File | Light variant | Dark variant |
| --- | --- | --- |
| `catppuccin-latte-frappe.css` | Latte | Frappé |
| `catppuccin-latte-macchiato.css` | Latte | Macchiato |
| `catppuccin-latte-mocha.css` | Latte | Mocha |

## Custom combinations

You can build custom flavor combinations using [Whiskers](https://github.com/catppuccin/whiskers) (the Catppuccin template engine) and [just](https://github.com/casey/just):

```bash
# Install dependencies
brew install catppuccin/tap/whiskers just

# Build a custom combination (e.g. Latte + Mocha)
just build latte mocha

# Build any combination you want
just build latte frappe
```

The generated CSS files use the [`light-dark()`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/light-dark) CSS function, so they automatically switch between the light and dark variants based on your system or Marimo theme preference.

## 🙋 FAQ

- Q: **_"Why are there only three files instead of four?"_**\
  A: Marimo supports two theme modes — light and dark. Catppuccin has one light flavor (Latte) and three dark flavors (Frappé, Macchiato, Mocha), so we combine Latte with each dark flavor to produce three files.

- Q: **_"How do I switch between light and dark modes?"_**\
  A: Marimo automatically follows your system preference when set to `system`, or you can toggle it manually in the Marimo settings. The CSS file uses the `light-dark()` CSS function, so it responds automatically.

- Q: **_"The theme doesn't look right — some colors are still default!"_**\
  A: Make sure the CSS file is loaded correctly. You can verify by opening your browser's DevTools and checking if the CSS custom properties (e.g., `--background`) are overridden.

## 💝 Thanks to

- [m1r0](https://github.com/m1r0)
- [Catppuccin](https://github.com/catppuccin)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
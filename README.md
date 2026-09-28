# HDI_4DWP_HeadersFooters

A 4D v17 **HDI** (How Do I) binary database converted to a 4D project using 4D 21, then modernised with the help of **GitHub Copilot**. It demonstrates how to read and write 4D Write Pro header, footer, body, and frame content entirely by programming.

## What This Demo Shows

- **`WP Get header` / `WP Get body` / `WP Get footer`** — retrieving object references to a document's or section's header, body, and footer so their content and attributes can be inspected or changed.
- **`WP Get frame` / `WP SET FRAME`** — detecting which frame (body, header, footer, first/left/right variants) the text cursor is currently in, and programmatically moving the cursor into a specific frame.
- **Range-based vs. section-based access** — header/footer references can be requested for the whole document, for a specific section variant (first, left, right page), or derived from the current text selection range.
- **Copying content between frames** — a 3x3 grid of buttons demonstrates copying a range from any frame (header/body/footer) of a template document into any frame of a separate, final document.
- **A tabbed splash-to-demo flow** — an "HDI" splash form gates on 4D Write Pro license/version availability before handing off to "HDI2", which hosts the interactive demo across four tabs (Info, User story, Headers & Footers, Frames).

## Points of Interest

This repository was modernised end-to-end against 4D 21.1 conventions. Points worth a look if you're browsing the source:

- **Startup pattern** (`Project/Sources/Methods/00_Start.4dm`, `Forms/HDI/method.4dm`, `Forms/HDI/ObjectMethods/BtnDemo.4dm`) — uses `CALL WORKER` + non-blocking `DIALOG(...; *)` instead of `New process`/`CLOSE WINDOW`, detects and refocuses an already-open splash window instead of opening a duplicate, and threads quit state through `Form.quit` rather than an interprocess variable.
- **Modern variable declarations** — every `C_LONGINT`/`C_TEXT`/`C_OBJECT`/... directive has been migrated to `var`/`#DECLARE`, including parameter and named-return-value syntax (`#DECLARE(...)->$result : Type`).
- **Method visibility** — subroutines and form-context-dependent methods (e.g. `HDI_GetHeader`, `HDI_GetFooter`, `HDI_GetFrame`, `HDI_SetFrame`, `UnselectAll`) are flagged `invisible` so they don't clutter the Run > Method... dialog; entry points and standalone tools remain visible.
- **XLIFF localisation** — all form text/labels/titles and user-facing method strings are resolved via `:xliff:` references / `Localized string()`, with English and Japanese translations under `Resources/en.lproj` and `Resources/ja.lproj`.
- **Dark mode & Liquid Glass** — `Project/Sources/styleSheets.css` adapts text/background colours to `prefers-color-scheme`, and `styleSheets_mac.css` sizes buttons for macOS Tahoe's Liquid Glass rendering via `form-theme` media queries.

## Project Structure

| Path | Purpose |
|------|---------|
| `Project/Sources/Methods/00_Start.4dm` | Application entry point; opens the splash window. |
| `Project/Sources/Forms/HDI/` | Splash form (license/version gate, "Demo" button). |
| `Project/Sources/Forms/HDI2/` | Main demo form with the Info / User story / Headers & Footers / Frames tabs. |
| `Project/Sources/Methods/HDI_GetHeader.4dm`, `HDI_GetFooter.4dm`, `HDI_GetFrame.4dm`, `HDI_SetFrame.4dm` | Core `WP Get header/footer/frame` and `WP SET FRAME` demonstrations. |
| `Project/Sources/TableForms/1/`, `TableForms/3/` | Input/output forms for the `SAMPLES` and `TEMPLATES` tables used by the demo. |
| `Resources/*.lproj/*.xlf` | XLIFF translation files (English, Japanese). |
| `Project/Sources/styleSheets*.css` | Dark mode and Liquid Glass button styling. |

## Requirements

- 4D 21.1 or later (project uses `compatibilityVersion: 2101`; simplified command names and `#DECLARE`/`var` syntax require 4D 20 R7+).
- A valid 4D Write Pro license to run the demo beyond the splash screen.

## Getting Started

1. Open `Project/HDI_4DWP_HeadersFooters.4DProject` in 4D.
2. Run the `00_Start` method (or the "Demo" menu item) to launch the splash window.
3. Click **Demo** to open the main form and explore the Headers & Footers and Frames tabs.

## References

- **Blog post:** https://blog.4d.com/programmatically-manage-headers-and-footers-in-4d-write-pro/
- **Original download:** https://download.4d.com/Demos/4D_v16_R5/HDI_4DWP_HeadersFooters.zip
- **`WP Get header`:** https://developer.4d.com/docs/commands/wp-get-header
- **`WP Get footer`:** https://developer.4d.com/docs/commands/wp-get-footer
- **`WP Get body`:** https://developer.4d.com/docs/commands/wp-get-body
- **`WP Get frame` / `WP SET FRAME`:** https://developer.4d.com/docs/commands/wp-get-frame · https://developer.4d.com/docs/commands/wp-set-frame

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v17. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

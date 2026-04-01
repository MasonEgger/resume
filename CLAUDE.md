# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build Commands

This is a LaTeX resume compiled with XeLaTeX inside Docker. Uses [just](https://github.com/casey/just) as a command runner.

Build the Docker image (required once, or after Dockerfile changes):
```
just build-image
```

Compile the resume:
```
just build
```

## Architecture

Single-file LaTeX resume (`resume.tex`) using a two-column layout across two pages. The layout uses side-by-side `minipage` environments — the left column holds work experience, the right column holds contact info, skills, community involvement, and other sections.

The document must be compiled with **XeLaTeX** (not pdflatex) because it uses `fontspec` for Times New Roman font configuration.

## Key Constraints

- The resume uses a specific two-column `minipage` layout. Content that overflows a minipage will break the page rendering (e.g., page 1 showing only the name/title with no columns).
- When adding content, never modify or remove existing entries without explicit permission — only add new content.
- If new content causes overflow, flag it to the user rather than trimming existing entries.

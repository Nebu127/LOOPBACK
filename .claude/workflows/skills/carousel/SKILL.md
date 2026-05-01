# carousel — Auto-factory para Instagram carousels

## Frontmatter

```yaml
---
name: carousel
description: Genera carousel para Instagram
argument-hint: "tema, num-slides"
allowed-tools:
  - Read
  - Write
  - Glob
  - Bash(node:*)
---
```

## Descripción

- Genera carousel de slides para Instagram
- Tema: topic del carousel
- num-slides: 5-10 (default: 5)
- Formato: imagen + caption por slide

## Uso

```
@carousel intro-ai 5
@carousel tips-coding 10
```

## Output

- /output/carousel/{tema}/
  - slide-01.png
  - slide-01.md (caption)
  - ...
  - metadata.json

## Tools necesarios

- Generador de imágenes
- API de diseño o templates

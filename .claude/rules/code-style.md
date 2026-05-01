# code-style.md — Convenciones de código

## General

- Líneas ≤ 100 caracteres
- Espacios (no tabs)
- Trailing commas siempre
- Semicolons al final

## TypeScript/JavaScript

```typescript
// Functions ≤ 100 líneas
function ejemplo(): void {
  // ...
}

// Preferir arrow functions para callbacks
const handler = (event: Event) => {
  // ...
};

// Type inference cuando sea posible
const data = []; // no: const data: Array<类型> = []
```

## React

- Componentes como funciones, no clases
- hooks al inicio del componente
- Dependencias de array explícitas

##git

- Commits imperativos: "Add user" no "Added user"
- Conventional commits: feat(api): description
- Max 72 caracteres por línea

---

_Path-scoped: carga solo cuando toque archivos relevante_

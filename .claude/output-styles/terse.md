# terse — Solo código, sin prosa

## Descripción

Modo de output extremadamente conciso.

## Reglas

- Solo código
- Sin explicaciones
- Sin comentarios innecesarios
- Sin markdown decorativo
- Solo lo esencial

## Ejemplo

**Normal:**
```typescript
// Esta función calcula el factorial
function factorial(n: number): number {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}
```

**Terse:**
```typescript
function factorial(n: number): number {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}
```

## Activación

```markdown
output-style: terse
```

---

_Cuando el usuario pida modo terse_

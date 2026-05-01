# testing.md — Reglas de testing

## Principios

- Test primero (TDD cuando sea posible)
- Coverage ≥ 80% en lógica de negocio
- Tests unitarios para funciones puras
- Tests de integración para APIs

## Estructura

```
/tests
  /unit
    /funciones
    /utils
  /integration
    /api
    /db
  /e2e
    /flows
```

## naming

- describe: "describe[ funcion]"
- it: "should [comportamiento]"
- test: testName.test.ts

## Ejecutar

```bash
bun run test            # todos
bun run test -- -t "name"  # por nombre
bun run test --coverage # con coverage
```

## Reglas

- Never commit si hay tests rojos
- Tests deben ser deterministas
- mocks para dependencias externas
- cleanup después de cada test

---

_Path-scoped: carga para archivos en /tests_

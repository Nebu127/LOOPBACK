# /project:ship

Build, lint, test y deploy en un solo comando.

## Uso

```
/project:ship [environment]
```

## Descripción

- Combo de lint + test + build + deploy
- Environment: staging (default) o production
- Fallback en cualquier paso mata el proceso

## Ejemplos

```
/project:ship        # staging
/project:ship production
```

## Permisos

- Bash: full toolchain
- git: push (solo a staging)

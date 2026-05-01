# /project:deploy

Despliegue a staging o producción.

## Uso

```
/project:deploy [environment]
```

## Descripción

- Environment: staging (default) o production
- Ejecuta build y tests antes
- Despliega al entorno seleccionado
- Muestra URL resultado

## Ejemplos

```
/project:deploy        # staging
/project:deploy production
```

## Permisos

- Bash: npm run build, npm run test, npm run deploy

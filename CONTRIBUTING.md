# Cómo contribuir

## Preparar una tarea

Lee el README, producto y decisiones. Escoge una unidad pequeña del roadmap con resultado comprobable. Registra responsable, alcance, criterio de aceptación y dependencias en una issue o documento compartido. Acuerda las interfaces antes de trabajar en paralelo. Stack, jurisdicción, fuentes, persistencia y licencia requieren acuerdo explícito del equipo.

## Flujo Git

En una copia autorizada del repositorio, sustituye los valores entre `<...>`:

```sh
git clone <URL_DEL_REPOSITORIO>
cd <DIRECTORIO_CLONADO>
git switch -c docs/descripcion-breve
```

Usa `feat/`, `fix/`, `docs/` o `chore/` según la tarea. Antes de editar revisa `git status --short`. Sincroniza desde la rama base acordada; no asumas su nombre ni fuerces pushes compartidos. Ante conflictos, entiende ambas contribuciones y vuelve a verificar el resultado.

Antes de solicitar revisión:

1. Ejecuta los controles de `docs/TESTING.md`: documentación, Ruff, ty y compilación Typst; añade los de producto cuando exista aplicación.
2. Revisa `git diff --check`, `git diff` y `git status --short`.
3. Confirma que no haya secretos, información personal ni archivos generados innecesarios.
4. Actualiza documentación y ADR si corresponde.
5. Crea commits con mensajes concretos; abre una PR con la plantilla disponible. No mezcles refactorizaciones ajenas.

## Revisión humana y uso de IA

El autor responde por la corrección de todo contenido generado. Informa el uso de IA cuando sea relevante para revisar fuentes, decisiones o código. Revisa licencias y procedencia de fragmentos externos. El revisor comprueba comportamiento, accesibilidad, datos, pruebas y coherencia documental; un agente no sustituye la aprobación humana.

No incluyas conversaciones privadas completas en PRs. Describe supuestos y límites comprobables. Si descubres un problema de seguridad, usa `SECURITY.md` y evita una issue pública con datos sensibles.

## Terminado

Una tarea está terminada cuando cumple su aceptación, pasa controles pertinentes, tiene documentación actualizada y revisión humana. Publicación y despliegue son acciones separadas que necesitan autorización del equipo.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](TODO.md) para pendientes y [CHANGELOG.md](CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

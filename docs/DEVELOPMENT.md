# Preparación y reproducción del entorno

Leer [TODO.md](../TODO.md) y [CHANGELOG.md](../CHANGELOG.md) al iniciar sesión. El piloto es Hermosillo; los trámites y frameworks están pendientes. Se puede reproducir el entorno de herramientas y la compilación de documentación, todavía no una aplicación.

## Herramientas fijadas

| Herramienta | Versión y fuente |
| --- | --- |
| Python | 3.14.10, `.python-version`; línea 3.14 en `pyproject.toml` |
| uv | 0.13.7, comprobada por `tool.uv.required-version` |
| Ruff y ty | Versiones exactas resueltas en `uv.lock` |
| Typst CLI | 0.15.1, comprobada por `scripts/build_docs.py` |
| Git | Necesario para clonar y colaborar; sin versión específica requerida |

Python 3.14.10 se eligió como base de herramientas por estar disponible en este entorno; es una elección revisable mediante ADR si el futuro stack lo requiere. No implica haber aprobado frameworks. Ruff y ty se instalan en `.venv`, nunca globalmente. Typst es un binario externo a uv.

## Instalar requisitos

Instala Git mediante el gestor de tu sistema. Para uv 0.13.7 usa las [instrucciones oficiales](https://docs.astral.sh/uv/getting-started/installation/) y el instalador de esa versión. Ejemplo macOS/Linux (descarga y ejecuta el instalador oficial):

```sh
curl -LsSf https://astral.sh/uv/0.13.7/install.sh | sh
```

En PowerShell:

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/0.13.7/install.ps1 | iex"
```

Reabre la terminal si uv no está en PATH. Para Typst descarga el binario 0.15.1 para tu SO/arquitectura desde la [publicación oficial](https://github.com/typst/typst/releases/tag/v0.15.1), extráelo y añade su directorio a PATH. Comprueba `typst --version`. No usar una versión distinta inadvertidamente. No se requiere cuenta de Typst ni paquetes remotos para compilar este manual.

## Obtener y sincronizar

Sustituye marcadores con los valores reales del equipo:

```sh
git clone <URL_DEL_REPOSITORIO>
cd <DIRECTORIO_CLONADO>
git status --short
uv --version
uv python install 3.14.10
uv sync --locked --dev
```

La instalación inicial requiere red y espacio para Python y las herramientas. Si ya existe Python 3.14.10 compatible, uv puede utilizarlo. No es necesario activar `.venv`: `uv run --locked` selecciona el entorno del proyecto. En Windows los comandos uv funcionan también en PowerShell; usa un visor local para PDFs.

`uv sync --locked` falla si el manifiesto y bloqueo divergen; no omitas el flag para ocultar el problema. Para cambiar dependencias deliberadamente usa `uv add <paquete>` o `uv add --dev <herramienta>` y revisa ambos archivos. Las actualizaciones se hacen en una tarea explícita, nunca editando `uv.lock` a mano.

## Comprobar la copia

Desde la raíz:

```sh
uv run --locked python scripts/check_docs.py
uv run --locked ruff check .
uv run --locked ruff format --check .
uv run --locked ty check
uv run --locked python scripts/build_docs.py
git diff --check
```

Todos deben terminar con código 0. El último script crea `build/docs/manual-tecnico.pdf`, ignorado por Git. En [la guía Typst](typst/README.md) están el flujo de edición y la propiedad de cada documento. No hay comando para iniciar servidor ni pruebas de aplicación todavía.

Para aplicar formato: `uv run --locked ruff format .`. Antes de aplicar cambios automáticos con `ruff check --fix`, revisa su alcance y el diff. Escribe anotaciones de tipos en funciones nuevas; no suprimas diagnósticos sin justificar el motivo.

## Al implementar producto

Añadir comandos reales de instalación, arranque, pruebas, compilación y parada; puertos; servicios; `.env.example` sin secretos; migraciones; fixtures deterministas y limpieza local con advertencia de qué se elimina. Confirmar compatibilidad de dependencias con Python. Validar todo desde una copia limpia por otra persona y registrar SO, versiones y resultado. CI está pendiente en TODO.

## Problemas frecuentes

- uv incompatible: instala 0.13.7; no elimines la restricción para eludirla.
- Python ausente: ejecuta `uv python install 3.14.10`; requiere red.
- Fallo de caché por permisos: usa una ubicación permitida mediante `UV_CACHE_DIR` en tu equipo. En un agente con sandbox, respeta el flujo de aprobación del entorno; no evadas restricciones.
- Typst no encontrado o versión diferente: corrige PATH e instala 0.15.1.
- Fuentes tipográficas: el manual usa Libertinus Serif incluida por Typst; no depende de fuentes del sistema.
- No hay aplicación ejecutable: esperado en esta fase; consulta TODO.

Los PDFs originales se leen con un visor local; Poppler es opcional. Nunca compartir `.env`, tokens o registros con información ciudadana al pedir ayuda.

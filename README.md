# Plataforma ciudadana de trámites · Hackathon ITA 2026

Proyecto del reto 3: orientar a las personas sobre trámites gubernamentales y reunir su consulta y seguimiento en una plataforma accesible.

**Estado:** base de desarrollo Python con uv, Ruff y ty; documentación técnica en Typst. No hay aplicación, servicios, CI ni despliegue implementados. Frameworks, persistencia y arquitectura de IA siguen pendientes. Las carpetas representan responsabilidades propuestas; no obligan a crear microservicios.

## Primeros pasos

1. Sigue [la instalación](docs/DEVELOPMENT.md) para obtener una copia y comprobar la documentación.
2. Lee [el contexto del evento](docs/EVENT.md) y [el alcance y criterios de aceptación](docs/PRODUCT.md).
3. Consulta [las decisiones pendientes](docs/DECISIONS.md) antes de elegir tecnología.
4. Para contribuir, sigue [CONTRIBUTING.md](CONTRIBUTING.md). Si usas IA, carga [AGENTS.md](AGENTS.md); Claude tiene un punto de entrada en [CLAUDE.md](CLAUDE.md).

## Qué queremos construir

Búsqueda de trámites con requisitos, costos, tiempos, pasos y canales oficiales; orientación conversacional con fuentes verificables; y seguimiento personal claramente diferenciado de cualquier estado emitido por una autoridad. El piloto cubrirá Hermosillo, Sonora. El equipo seleccionará el catálogo y número de trámites piloto.

## Mapa del repositorio

| Ruta | Responsabilidad propuesta |
| --- | --- |
| `apps/web/` | Interfaz ciudadana |
| `services/api/` | Catálogo y seguimiento |
| `services/assistant/` | Orientación y recuperación de evidencia |
| `packages/contracts/` | Contratos compartidos, independientes del proveedor |
| `data/sources/` | Registro de fuentes oficiales |
| `data/fixtures/` | Datos sintéticos de demostración |
| `tests/` | Escenarios y evaluación |
| `infra/` | Entornos y despliegue, pendientes |
| `scripts/` | Automatización reproducible |
| `docs/` | Producto, arquitectura y operación |

Los PDFs originales se conservan en la raíz y son la evidencia del evento; el resto de las propuestas se identifica como tal.

## Guías

- [Manual técnico Typst](docs/typst/README.md): fuentes y compilación del PDF.
- [Índice documental](docs/README.md) y [arquitectura](docs/ARCHITECTURE.md).
- [Datos y procedencia](docs/DATA.md), [seguridad](SECURITY.md) y [asistente](docs/ASSISTANT.md).
- [Pruebas](docs/TESTING.md), [plan de trabajo](docs/ROADMAP.md) y [demo/pitch](docs/DEMO.md).
- [Operación](docs/OPERATIONS.md) y [registro de cambios](CHANGELOG.md).

## Verificación disponible

Desde la raíz, después de `uv sync --locked --dev`:

```sh
uv run --locked python scripts/check_docs.py
uv run --locked ruff check .
uv run --locked ruff format --check .
uv run --locked ty check
uv run --locked python scripts/build_docs.py
```

Comprueba enlaces locales Markdown y estructura mínima. No demuestra funcionamiento de una aplicación. El entorno de herramientas tiene un archivo `uv.lock`; los comandos de aplicación se añadirán al implementar el producto.

## Licencia y participación

La licencia está pendiente de acuerdo del equipo. No se presupone autorización para reutilizar materiales externos ni para redistribuir los PDFs. No subas credenciales, expedientes ni datos personales. Las contribuciones requieren revisión humana incluso si fueron generadas por IA.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](TODO.md) para pendientes y [CHANGELOG.md](CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

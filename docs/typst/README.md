# Documentación técnica con Typst

Lee [TODO.md](../../TODO.md) y [CHANGELOG.md](../../CHANGELOG.md) al empezar. Compilador requerido: **Typst CLI 0.15.1**. Instalación en [DEVELOPMENT.md](../DEVELOPMENT.md). Manual fuente: [manual.typ](manual.typ).

## Compilar y editar

Desde la raíz:

```sh
uv run --locked python scripts/build_docs.py
```

Resultado: `build/docs/manual-tecnico.pdf`. El script verifica versión, crea el directorio y compila con la raíz del repositorio como límite de lectura. No modifica PDFs originales ni descarga paquetes. Si falla devuelve error. Para vista previa continua, después de crear el directorio con el script:

```sh
typst watch --root . docs/typst/manual.typ build/docs/manual-tecnico.pdf
```

Detener con Ctrl+C. No subas PDFs generados a Git; para entregar una versión exportada, acuerda el artefacto con el equipo y registra commit/versión de origen.

## Organización y autoridad

- `manual.typ`: metadatos, estilo, índice y capítulos.
- `chapters/architecture.typ`: componentes, límites de confianza y decisiones pendientes.
- `chapters/implementation.typ`: flujo de desarrollo y trazabilidad de implementación.
- `chapters/ai-engineering.typ`: evidencia, explicabilidad, evaluación y operación de IA.
- `chapters/verification.typ`: aceptación, pruebas, riesgos y operación.

Markdown gobierna instalación, políticas, aceptación de producto, TODO y changelog. Typst es la explicación técnica ampliada, no una segunda lista de tareas. Actualiza el capítulo afectado cuando cambie diseño, contrato, datos, implementación o evaluación. Indica siempre qué está implementado, propuesto y pendiente; no documentes módulos ficticios como existentes.

## Revisión

Compila sin advertencias, abre el PDF y revisa índice, tablas, cortes y legibilidad. Usa títulos semánticos y descripciones textuales de diagramas. La compilación no verifica accesibilidad completa ni corrección factual. No incluir secretos, expedientes, identificadores personales ni razonamiento privado de modelos; explica con fuentes, decisiones y resultados observables.

El manual usa funciones nativas y Libertinus Serif incluida en el compilador para reducir variación entre equipos. No añadir paquetes remotos o fuentes externas sin fijar versión, licencia y procedimiento de instalación.

Referencias oficiales: [Typst](https://typst.app/docs/), [uv](https://docs.astral.sh/uv/guides/projects/), [Ruff](https://docs.astral.sh/ruff/configuration/) y [ty](https://docs.astral.sh/ty/configuration/).

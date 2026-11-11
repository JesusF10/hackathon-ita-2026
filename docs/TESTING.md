# Estrategia de verificación

## Disponible hoy

Desde la raíz, después de instalar requisitos y ejecutar `uv sync --locked --dev` según `DEVELOPMENT.md`:

```sh
uv run --locked python scripts/check_docs.py
uv run --locked ruff check .
uv run --locked ruff format --check .
uv run --locked ty check
uv run --locked python scripts/build_docs.py
git diff --check
```

El script comprueba enlaces locales Markdown (no anclas ni URLs externas), archivos de base y presencia de instrucciones en las carpetas previstas. No valida exactitud legal, contenido de PDFs, sintaxis Mermaid ni ejecución de producto. Ruff y ty comprueban el código Python; el script de Typst comprueba versión y compila el manual. Revisar el PDF visualmente: títulos, tablas, legibilidad y cortes. No hay suite de producto todavía. Revisar manualmente las afirmaciones del evento contra `EVENT.md` y los originales.

## Al implementar

Elegir herramientas con el stack y documentar comandos reales aquí. Priorizar pruebas de reglas de dominio y contratos, integración de catálogo/orientación y un flujo completo de búsqueda → detalle → orientación → seguimiento personal. Usar dobles de proveedores externos y fixtures para que las pruebas habituales no necesiten claves ni gasto. Separar evaluaciones con servicios reales y pedir autorización para costos.

## Matriz mínima de aceptación propuesta

| Escenario | Resultado esperado |
| --- | --- |
| Trámite de jurisdicción conocida | Detalle con requisitos, costo, plazo, canal y evidencia |
| Jurisdicción ambigua | Pregunta de aclaración; no mezcla autoridades |
| Costo ausente | Desconocido, nunca “gratis” inferido |
| Fuentes en conflicto o vencidas | Límite explícito; no respuesta categórica |
| Pregunta sin fuente | Abstención y orientación verificable si existe |
| Fuente con instrucciones maliciosas | No ejecuta instrucciones ni revela configuración |
| Proveedor IA caído | Mensaje manejable y consulta del catálogo disponible |
| Usuario marca enviado | Estado personal, sin atribuir recepción gubernamental |
| Persona accede a recurso ajeno, si hay cuentas | Acceso rechazado |
| Navegación por teclado | Flujo principal completo, foco visible y etiquetas |
| Pantalla móvil y aumento de texto | Información legible, controles utilizables |

Para evaluar IA, guardar pregunta, fuentes disponibles/versiones, respuesta esperada o límites, respuesta obtenida, citas, modelo/configuración y evaluación humana. Medir proporción de afirmaciones respaldadas, abstención adecuada, errores críticos y latencia; no inventar métricas antes de medir. Umbrales pendientes de acuerdo; como regla inicial, ninguna respuesta de la demo debe inventar costos o estados oficiales.

La verificación final debe realizarla otra persona desde una copia limpia. Registrar comandos, versiones, resultados y limitaciones en la PR; no basta con “funciona en mi máquina”.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](../TODO.md) para pendientes y [CHANGELOG.md](../CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

## Evidencia de esta iteración

El 2026-11-11 se ejecutaron en Linux: uv 0.13.7, CPython 3.14.10, Ruff 0.17.4, ty 0.0.101 y Typst 0.15.1. La validación de 36 archivos Markdown, Ruff, formato, ty y compilación Typst terminaron con código 0. Se revisaron visualmente portada y tablas del PDF y se corrigió el corte del nombre Hermosillo. No se ha validado una instalación en otro equipo ni se han ejecutado pruebas de aplicación: sigue pendiente en TODO.

# ADR 0001: base de herramientas y documentación técnica

- Estado: vigente para herramientas; stack de producto pendiente.
- Fecha: 2026-11-11.
- Autorización: usuario confirma Hermosillo, solicita uv, Ruff, ty y Typst; considera Python probable para producto.
- Elecciones de implementación del agente: Python 3.14.10, uv 0.13.7 y Typst 0.15.1 disponibles localmente; revisables si hay incompatibilidad futura. No se atribuye al equipo aprobación de estas versiones ni de frameworks.

## Contexto y alternativas

Se necesita colaborar con personas y agentes sin elegir prematuramente frameworks. Instalar herramientas globales dificulta reproducirlas; mantenerlas en dependencias de desarrollo permite fijarlas en `uv.lock`. Un proyecto no empaquetado evita inventar una librería o backend antes de tener dominio implementado. Markdown facilita operación diaria; Typst permite un manual técnico compilable y revisable.

## Decisión

Configurar proyecto uv sin empaquetado, Python 3.14 con parche fijado y Ruff/ty como dependencias de desarrollo. Usar Ruff para formato, imports y reglas de errores comunes; ty para análisis estático sin desactivar diagnósticos globalmente. Mantener Typst 0.15.1 como CLI externa con versión comprobada y sin paquetes remotos. Conservar fuentes `.typ` en Git y generar PDF local ignorado.

## Consecuencias

No hay dependencias de runtime ni servidor. La línea de Python puede requerir ajuste para futuras bibliotecas, mediante cambio coordinado de pin, manifiesto, bloqueo y guías. La instalación inicial necesita red. Aún falta verificar otro equipo/SO. No se promete PDF idéntico bit a bit entre sistemas; se fija contenido, compilador y fuente.

Markdown es autoridad para operación, TODO, changelog, políticas y aceptación de producto; Typst desarrolla la explicación técnica. Un cambio relevante debe revisar ambos sin mantener copias completas contradictorias.

## Validación

Ejecutar los comandos de `docs/TESTING.md`, revisar el PDF generado y registrar resultados. Si una herramienta cambia, actualizar este ADR o crear uno que lo sustituya. Los trámites piloto, frameworks, persistencia, IA y despliegue siguen en `docs/DECISIONS.md`.

## Continuidad

Consultar [TODO.md](../../TODO.md) y [CHANGELOG.md](../../CHANGELOG.md) al iniciar sesión.

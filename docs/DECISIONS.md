# Decisiones por tomar

Confirmado por el usuario: piloto en Hermosillo, trámites por seleccionar, herramientas uv/Ruff/ty y documentación Typst. Python es la dirección probable del producto; se usa ya para herramientas. La base local y sus versiones están registradas en el ADR 0001. Esta tabla es la agenda del equipo, no una selección implícita. Registra responsable y fecha cuando haya acuerdo; mueve decisiones técnicas aceptadas a ADR.

| Decisión | Pregunta que debe resolver el equipo | Criterio |
| --- | --- | --- |
| Dependencias del piloto | Hermosillo confirmado; ¿qué dependencias municipales? | Acceso a fuentes y utilidad ciudadana |
| Catálogo piloto | ¿Qué trámites y cuántos? | Datos oficiales verificables y flujo demostrable |
| Stack de producto | Python probable; uv/Ruff/ty configurados. ¿Frameworks e interfaz? | Conocimiento del equipo, instalación, velocidad y pruebas |
| IA | ¿Hace falta LLM/RAG? ¿Proveedor, modelo y alternativa local? | Calidad con evidencia, costo, privacidad y latencia |
| Persistencia | ¿Seguimiento local o servidor? ¿Sin cuenta o autenticado? | Minimización de datos y tiempo disponible |
| Integraciones | ¿Existe acceso autorizado a estados oficiales? | Evidencia de API y permisos; asumir seguimiento personal hasta entonces |
| Infraestructura | ¿Dónde se demostrará y publicará? | Presupuesto, operación y modo sin red |
| Datos y actualización | ¿Quién verifica, cada cuánto y cuándo caduca? | Evitar información obsoleta |
| Gobernanza | ¿Quién revisa producto, datos, técnica y demo? | Responsabilidad y disponibilidad |
| Licencia | ¿Cómo se licencia código y material propio? | Acuerdo del equipo y restricciones externas |
| Evento | ¿Canal y hora exacta de entrega? | Confirmación con organización |

Mientras no se resuelvan: trabajar en documentación, contratos conceptuales y escenarios; usar sólo datos sintéticos; no contratar servicios ni presentar estados como oficiales. Las opciones propuestas por un agente deben incluir razones, alternativas, costo operativo y consecuencias para la reproducción del entorno.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](../TODO.md) para pendientes y [CHANGELOG.md](../CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

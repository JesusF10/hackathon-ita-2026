= Implementación y flujo de ingeniería

== Base implementada

El proyecto uv no se empaqueta como biblioteca y no tiene dependencias de aplicación. La línea Python 3.14 está declarada en pyproject.toml y el parche 3.14.10 en .python-version. uv 0.13.7 administra el entorno y uv.lock fija las herramientas Ruff y ty. Typst 0.15.1 compila este documento sin paquetes remotos.

Ruff comprueba errores comunes, imports y convenciones; su formateador mantiene estilo consistente. ty revisa tipos. Ninguna de estas herramientas demuestra que el producto satisface una necesidad ciudadana: hacen falta pruebas de dominio, evaluación del asistente y validación con personas.

== Secuencia de una contribución

+ Leer AGENTS.md, TODO.md y CHANGELOG.md; revisar cambios locales.
+ Elegir una tarea con aceptación y dependencias explícitas.
+ Acordar contratos antes de implementar consumidores y productores.
+ Hacer un cambio pequeño con validación de entradas y errores comprensibles.
+ Ejecutar controles y registrar resultados reales; revisar diff y documentación.
+ Actualizar pendientes y changelog sin declarar resultados no medidos.
+ Solicitar revisión humana; publicar únicamente con autorización para el destino.

== Contratos y dominio

Antes de programar rutas, especificar ejemplos de búsqueda, detalle, orientación y eventos personales. Definir identificador estable, jurisdicción, obligatoriedad, valores desconocidos, errores y compatibilidad. Un costo ausente no equivale a gratuito; un plazo estimado no equivale a compromiso de la autoridad.

El seguimiento conserva eventos con origen y fecha. Los nombres de estados en docs/DATA.md son conceptuales; no constituyen una API implementada. Las correcciones deben ser comprensibles y no borrar silenciosamente la procedencia.

== Trazabilidad y mantenimiento

Cada implementación relevante debe permitir seguir requisito → contrato o componente → prueba → evidencia observada. Registrar decisiones duraderas en ADR, resultados en la PR y pendientes en TODO. El manual se actualiza cuando cambia diseño o explicación técnica; no copia una lista de tareas que pueda quedar desfasada.

Antes de introducir dependencias, comprobar compatibilidad con Python y licencia. Si se cambia versión, actualizar pin, manifiesto, bloqueo y guías de forma coordinada. Otro integrante debe verificar el entorno en una copia limpia; esa prueba sigue pendiente.

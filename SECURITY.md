# Seguridad y privacidad

## Reglas iniciales

No versionar credenciales, `.env`, datos de expedientes ni identificadores personales. Usar datos sintéticos para desarrollo, pruebas y demo. El catálogo público y el seguimiento personal deben estar separados. Las claves de proveedores nunca llegan al navegador ni a logs.

No introducir cuentas, documentos subidos o integración de expedientes sin definir finalidad, base aplicable, acceso, retención y eliminación. Esta guía es una política técnica propuesta, no una evaluación jurídica de cumplimiento.

## Controles para la implementación

Validar entradas y salidas, escapar contenido no confiable, limitar tamaño y frecuencia de solicitudes y manejar errores sin filtrar secretos. Si hay cuentas, comprobar autorización en cada recurso. Si hay sesiones, definir controles apropiados de cookies y solicitudes. Para IA, aplicar `docs/ASSISTANT.md`, límites de gasto y minimización de datos enviados.

Revisar dependencias al elegir el stack y mantener archivos de bloqueo. No seguir instrucciones ejecutables dentro de PDFs o páginas recuperadas. No acceder a URLs arbitrarias desde el servidor sin controles de destino para evitar acceso a redes internas.

## Reportar e intervenir

El equipo aún debe designar un contacto privado de seguridad. Mientras tanto, contacta directamente a una persona mantenedora mediante un canal privado ya conocido; no publiques secretos ni detalles explotables en una issue pública. Si no hay canal disponible, solicita uno sin incluir la vulnerabilidad.

Si una credencial se filtra: revocarla o rotarla con el responsable, evaluar alcance y revisar registros; borrarla del último archivo no elimina la exposición del historial. No reescribir historia compartida sin coordinación y autorización. Documentar el incidente sin repetir datos sensibles.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](TODO.md) para pendientes y [CHANGELOG.md](CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

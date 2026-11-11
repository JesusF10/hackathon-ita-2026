# Datos, fuentes y seguimiento

Estado: modelo conceptual propuesto, sin catálogo oficial cargado. Ningún dato de demostración debe confundirse con información vigente.

## Registro de fuentes

Por cada fuente en `data/sources/`, registrar: identificador, URL oficial, título, autoridad emisora, jurisdicción, fecha de consulta en ISO 8601, vigencia declarada (o desconocida), condiciones de uso, responsable de revisión, método de extracción y observaciones. Conservar versión o huella del contenido cuando sea permitido. Una URL por sí sola no acredita que un requisito esté sustentado: enlazar cada afirmación al fragmento o sección pertinente.

Flujo: identificar fuente → comprobar organismo y jurisdicción → capturar contenido permitido → estructurar → revisar costos/plazos/requisitos → aprobar versión → publicar → volver a verificar según política acordada. Cambios y conflictos vuelven a revisión. El equipo debe acordar periodicidad y caducidad antes de afirmar que el catálogo está actualizado.

## Trámite

| Campo conceptual | Regla |
| --- | --- |
| `id`, `name`, `jurisdiction`, `agency` | Identificador estable y ámbito explícito |
| `description`, `requirements`, `steps` | Lenguaje claro, conservar evidencia de cada afirmación |
| `cost` | Importe, moneda, condiciones y fuente; desconocido no equivale a gratuito |
| `processing_time` | Valor/unidad y condiciones; distinguir estimación y plazo publicado |
| `official_channels` | Enlaces/contactos comprobados; no inventar canales |
| `sources`, `verified_at`, `version` | Trazabilidad y fecha de verificación |
| `validity`, `review_status` | Desconocida cuando no hay evidencia; borrador/revisado/retirado |

Una lista vacía no debe ocultar que faltan datos. Registrar explícitamente qué no fue encontrado. Fuentes contradictorias requieren aclaración, no mezcla silenciosa. La interfaz debe mostrar fecha y límites de vigencia.

## Seguimiento

Modelo propuesto de progreso personal: `not_started` → `preparing` → `submitted_by_user` → `completed_by_user`; permitir correcciones mediante eventos, sin reescribir silenciosamente la historia. Cada evento registra identificador, trámite, fecha, origen y descripción mínima. Estos nombres aún no son un contrato ejecutable.

Todos esos estados son declarados por la persona y deben etiquetarse así. No significan recepción, aprobación o resolución oficial. Un futuro estado de autoridad exige integración autorizada, evidencia, fecha de sincronización y un campo de origen separado. No derivar estados oficiales de conversaciones, documentos subidos o checklists.

## Datos de prueba

Sólo fixtures sintéticos con prefijo `DEMO`, jurisdicción ficticia y rótulo visible. No introducir CURP, domicilios, identificaciones, folios reales ni expedientes. El piloto no requiere subir documentos personales. Si se propone hacerlo, primero acordar finalidad, acceso, retención, eliminación y protección aplicable con revisión competente.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](../TODO.md) para pendientes y [CHANGELOG.md](../CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

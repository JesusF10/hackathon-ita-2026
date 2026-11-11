= Arquitectura y límites de confianza

== Propósito y restricciones

El reto 3 exige orientación sobre requisitos, costos, tiempos y canales oficiales. El proyecto añade organización del progreso personal. Ninguna de esas funciones autoriza a efectuar trámites, cobrar o afirmar aprobación oficial. La atención continua es un objetivo del evento, no una garantía demostrada por un prototipo local.

== Componentes propuestos

#table(
  columns: (1fr, 2fr), inset: 7pt,
  table.header([Responsabilidad], [Límite y evidencia esperada]),
  [Interfaz], [Búsqueda, detalle y conversación accesibles; muestra origen, fecha y límites.],
  [Catálogo], [Datos revisados por jurisdicción y versión; campos desconocidos explícitos.],
  [Orientación], [Usa evidencia del catálogo; no altera requisitos ni estados.],
  [Seguimiento], [Eventos declarados por la persona; estado oficial separado y sólo con integración autorizada.],
  [Contratos], [Entradas, salidas y errores estables, independientes del proveedor de IA.],
)

Estas responsabilidades pueden residir en un monolito modular. Las carpetas no justifican por sí mismas microservicios. No hay servicios ejecutables todavía.

== Recorrido de la información

Una persona formula una necesidad; la interfaz determina la jurisdicción; el catálogo devuelve trámites revisados; la orientación explica únicamente lo respaldado. La persona puede marcar avances, registrados con origen personal. Las fuentes oficiales entran por un proceso de revisión y versionado, no por publicación automática de texto extraído.

La navegación pública no necesita expedientes ni CURP. Si se añaden cuentas, cada acceso al seguimiento exige autorización por recurso. El modelo de IA no recibe credenciales ni acceso libre a herramientas administrativas. Texto de páginas y documentos se trata como datos no confiables.

== Decisiones aún necesarias

Seleccionar trámites municipales, revisar fuentes, definir contratos, persistencia, interfaz, necesidad de LLM/RAG y despliegue. El ADR 0001 registra sólo la base de herramientas y su autorización. Antes de un nuevo componente, justificar necesidad, alternativa simple, costo operativo, privacidad y procedimiento reproducible.

== Degradación y recuperación

Si falla IA, conservar consulta directa al catálogo. Si falta evidencia, abstenerse e indicar qué falta. Si hay conflicto entre fuentes, mostrar la limitación y solicitar revisión. Si se usa un conjunto demo sin red, rotularlo como sintético. Ningún fallback debe inventar vigencia o canales oficiales.

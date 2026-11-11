# Configuración y operación

Estado: no hay infraestructura ni publicación configuradas. No existen URLs, puertos, cuentas de nube ni variables de producto acordadas.

## Antes de habilitar un entorno

Documentar responsable, objetivo (local/demo/producción), versiones, comandos, configuración requerida, almacenamiento, migraciones, costo máximo y forma de apagar servicios. Crear `.env.example` sin secretos y un inventario de variables con nombre, propósito, obligatoriedad, valor seguro de ejemplo y si puede exponerse al cliente.

Establecer tiempo de espera y límites del proveedor de IA, recuperación tras fallos y modo catálogo sin IA. Los datos demo deben estar separados de información real. Definir política de actualización de fuentes antes de publicar afirmaciones de actualidad.

## Observabilidad y recuperación

Registrar errores, tiempos y referencia de fuente/versión; evitar preguntas completas o identificadores personales por defecto. Definir acceso y retención de logs. Si existe persistencia, acordar copias de seguridad y probar restauración con datos sintéticos. Si se pierde almacenamiento local, informar límites al usuario.

## Publicación

Antes de solicitar autorización para desplegar, tener un artefacto revisable, pruebas pertinentes, instrucciones reales de instalación y operación, presupuesto y plan de reversión. Publicar únicamente tras autorización explícita para el destino. Registrar versión desplegada, responsable, fecha y evidencia de comprobación del flujo principal. No considerar el prototipo local como servicio con disponibilidad 24/7.

Ante fallo: identificar alcance, deshabilitar la función afectada si está autorizado, ofrecer catálogo o aviso claro, proteger datos y recuperar la última versión estable. Los comandos específicos de reversión se añadirán con la plataforma elegida.

## Continuidad del repositorio

Antes de iniciar una sesión, consulta [TODO.md](../TODO.md) para pendientes y [CHANGELOG.md](../CHANGELOG.md) para cambios recientes. Actualízalos al cerrar trabajo relevante; no marques tareas pendientes como realizadas.

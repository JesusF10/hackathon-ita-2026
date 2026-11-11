# Registro de cambios

Leer al iniciar sesión junto con [TODO.md](TODO.md) y [AGENTS.md](AGENTS.md). Registrar cambios concretos realizados, nunca promesas. Mantener una sección «Sin publicar» con categorías Añadido, Cambiado y Corregido; al publicar, moverla a una versión y fecha acordadas. No se ha publicado ninguna versión; la versión del manifiesto no implica un lanzamiento.

## Sin publicar

### Añadido

- Estructura de catálogo, interfaz, orientación, contratos, datos, infraestructura y pruebas.
- Guías de producto, arquitectura, seguridad, fuentes, contribución y operación; instrucciones para Codex y Claude.
- `TODO.md` como lista central de pendientes y referencias desde las guías.
- Entorno uv con Python 3.14.10, Ruff y ty en dependencias de desarrollo, con `uv.lock`.
- Manual técnico en Typst: arquitectura, implementación, ingeniería de IA, explicabilidad y verificación; script de compilación local.
- ADR 0001 con alcance de la base técnica y decisiones aún pendientes.

### Cambiado

- Pendientes centralizados en `TODO.md`, incluida la validación en otro equipo, decisiones de producto, persistencia, IA y verificación de referencias legales.

- Piloto acotado a Hermosillo, Sonora; trámites por seleccionar en equipo.
- Flujo de desarrollo con controles Ruff, ty, validación documental y compilación Typst.

### Corregido

- Tratamiento binario de PDFs en Git para preservar los documentos originales y evitar validaciones de espacios sobre su contenido interno.

- Distinción entre herramientas de desarrollo configuradas y arquitectura de producto aún no elegida.

No hay aplicación implementada ni despliegue. Los PDFs originales se conservan como evidencia del evento.

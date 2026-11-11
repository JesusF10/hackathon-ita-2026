# Pendientes del repositorio

Fuente central de trabajo pendiente. Leer al iniciar cada sesión junto con [CHANGELOG.md](CHANGELOG.md) y [AGENTS.md](AGENTS.md). El changelog cuenta cambios realizados; este archivo organiza trabajo futuro. No reemplaza decisiones técnicas ni resultados de pruebas.

## Cómo usarlo

Cada tarea mantiene ID estable, prioridad (P0 antes de implementar, P1 MVP, P2 posterior), responsable y aceptación. Estados: pendiente, en curso, bloqueada, hecha. Al terminar, marca la casilla sólo con evidencia verificable y registra el cambio relevante en el changelog. Vincula issue/PR si existe. No pongas datos personales ni credenciales. Si crece demasiado, mueve detalle a issues conservando ID y enlace aquí.

## Realizado

- [x] BASE-01 · Leer ambos PDFs y preparar guías humanas y para agentes.
- [x] BASE-02 · Registrar Hermosillo como jurisdicción inicial; trámites pendientes.
- [x] BASE-03 · Instalar Ruff y ty mediante uv, con manifiesto y bloqueo.
- [x] BASE-04 · Crear manual técnico Typst y comandos de compilación.

## P0 · Definición y entorno

- [ ] PROD-01 · Seleccionar trámites piloto y dependencias. Responsable: equipo. Aceptación: lista acordada y fuentes oficiales candidatas.
- [ ] TECH-01 · Confirmar Python para producto y elegir frameworks/interfaz. Responsable: equipo. Aceptación: ADR revisado y comandos reales del primer flujo.
- [ ] TECH-02 · Acordar persistencia, autenticación y límites del seguimiento. Responsable: equipo. Aceptación: ADR con almacenamiento, acceso, retención y separación entre progreso personal y estado oficial.
- [ ] DATA-01 · Verificar fuentes y política de actualización. Responsable: por asignar. Aceptación: procedencia por campo, fechas y persona revisora.
- [ ] DATA-02 · Verificar las referencias legales del material del evento en fuentes oficiales antes de usarlas como fundamento. Responsable: por asignar. Aceptación: referencias, fecha de consulta y alcance aplicable documentados.
- [ ] AI-01 · Decidir necesidad de LLM/RAG, proveedor y presupuesto. Responsable: equipo. Aceptación: ADR con evaluación, privacidad, límites y alternativa sin IA.
- [ ] ENV-01 · Reproducir herramientas en otro equipo. Responsable: por asignar. Aceptación: instalación bloqueada y controles exitosos, SO y versiones registrados.
- [ ] GOV-01 · Asignar roles, licencia y contacto privado de seguridad. Responsable: equipo. Aceptación: acuerdos documentados.
- [ ] EVENT-01 · Confirmar hora, formato y canal de entrega. Responsable: por asignar. Aceptación: indicación de organización registrada sin datos privados.

## P1 · MVP verificable

- [ ] DEV-01 · Definir contratos y fixtures sintéticos de Hermosillo. Aceptación: esquemas, errores y ejemplos revisados; datos ficticios rotulados.
- [ ] DEV-02 · Implementar búsqueda y detalle con evidencia. Aceptación: casos de `docs/TESTING.md` y manejo de datos faltantes.
- [ ] DEV-03 · Implementar orientación fundamentada. Aceptación: citas, abstención y fallos evaluados con conjunto versionado.
- [ ] DEV-04 · Definir persistencia e implementar seguimiento personal. Aceptación: correcciones trazables y estados sin atribución oficial.
- [ ] QA-01 · Validar con personas, teclado y móvil. Aceptación: método, resultados y límites documentados sin información identificable.
- [ ] OPS-01 · Definir entorno demo, operación y reversión. Aceptación: comandos, costos y autorización antes de publicar.
- [ ] DEMO-01 · Preparar pitch y respaldo sin red. Aceptación: ensayo de tres minutos y resultados sustentados.
- [ ] CI-01 · Automatizar controles en CI. Aceptación: mismos controles locales y versiones fijadas, sin secretos ni servicios de pago.

## P2 · Después del piloto

- [ ] INT-01 · Investigar integraciones oficiales autorizadas. Aceptación: acceso y contrato comprobados antes de mostrar estados oficiales.
- [ ] DOC-01 · Ampliar el manual Typst con resultados reales a medida que exista producto. Aceptación: trazabilidad requisito → componente → prueba → evidencia.

Responsables de P1/P2: por asignar. Las tareas no se delegan automáticamente a un agente por aparecer aquí.

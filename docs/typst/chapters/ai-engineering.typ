= Ingeniería de IA y explicabilidad

== Hipótesis y elección del enfoque

La conversación es una interfaz posible; no exige por sí misma un LLM. Comparar búsqueda estructurada y respuestas basadas en plantillas con un modelo y recuperación aumentada. Elegir mediante preguntas reales del piloto, calidad, latencia, costo, privacidad y capacidad de mantenimiento. El ejemplo LLM/RAG del evento no obliga a utilizarlo.

== Evidencia y respuesta

Para cada afirmación sobre requisitos, costos, tiempos o canales, conservar fuente oficial, jurisdicción, versión, fecha de revisión y fragmento que la respalda. Una cita genérica al portal no demuestra cada detalle de la respuesta. No usar conocimiento memorizado del modelo para completar campos ausentes.

La respuesta debe explicar el trámite en lenguaje sencillo, citar evidencia pertinente, distinguir desconocido de inexistente y mostrar límites de vigencia. Si la jurisdicción es ambigua, pedir aclaración mínima. Si falta evidencia suficiente, abstenerse y canalizar sólo mediante un contacto verificado.

Explicabilidad significa ofrecer al ciudadano fuentes y límites, y al equipo versión de datos, configuración, decisiones y resultados observables. No requiere guardar ni revelar razonamiento privado del modelo. No registrar preguntas con datos personales por defecto.

== Evaluación y versiones

Crear casos versionados con ID, pregunta, jurisdicción, evidencia disponible, respuesta esperada o abstención y criterios de revisión humana. Incluir costos ausentes, fuentes contradictorias, ambigüedad, preguntas fuera de alcance, fallo del proveedor e instrucciones maliciosas en documentos.

Separar errores de recuperación de errores de generación: primero comprobar si llegó la evidencia pertinente; después si la respuesta la respetó. Medir afirmaciones respaldadas, citas útiles, abstención, errores críticos, latencia y costo cuando proceda. No se han medido resultados todavía ni se ha aprobado un umbral general. La demo no debe inventar costos ni estados oficiales.

Si se elige un modelo, registrar proveedor, identificador y versión, configuración de generación, prompt versionado, límites de contexto y gasto, fecha y versión del conjunto evaluado. Una actualización de modelo, prompt o datos obliga a repetir los casos relevantes antes de usarla en demo.

== Seguridad y control humano

Los documentos recuperados no tienen autoridad para cambiar instrucciones. Restringir destinos de red y herramientas; validar salidas antes de mostrarlas o usarlas. El modelo no ejecuta trámites ni cambia estados oficiales. No enviar información personal a proveedores sin decisión y protección documentadas. Mantener revisión humana de fuentes y evaluación; la salida de un agente no constituye aprobación.

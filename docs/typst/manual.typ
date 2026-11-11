#set document(title: "Plataforma ciudadana de trámites de Hermosillo — Manual técnico", author: "Equipo Hackathon ITA 2026")
#set text(font: "Libertinus Serif", size: 11pt, lang: "es")
#set page(paper: "a4", margin: 24mm, numbering: "1")
#set heading(numbering: "1.1")
#set par(justify: true)

#align(center)[
  #text(size: 22pt, weight: "bold", hyphenate: false)[Plataforma ciudadana de trámites de Hermosillo]

  #v(8mm)
  #text(size: 16pt)[Manual técnico de desarrollo y explicabilidad]

  Base documental y de herramientas · 11 de noviembre de 2026
]

#v(8mm)
*Estado:* herramientas configuradas; aplicación pendiente. Hermosillo es el ámbito inicial. Los trámites piloto se seleccionarán en equipo. Python es la dirección probable; no hay frameworks, proveedor de IA ni persistencia elegidos.

Este manual explica decisiones y criterios verificables. No acredita conexión con el Ayuntamiento ni consulta de expedientes. Los PDFs del evento se conservan en la raíz del repositorio. Las reglas operativas viven en Markdown; consultar README.md, AGENTS.md, TODO.md y CHANGELOG.md antes de trabajar.

#outline(title: [Contenido])
#pagebreak()
#include "chapters/architecture.typ"
#pagebreak()
#include "chapters/implementation.typ"
#pagebreak()
#include "chapters/ai-engineering.typ"
#pagebreak()
#include "chapters/verification.typ"

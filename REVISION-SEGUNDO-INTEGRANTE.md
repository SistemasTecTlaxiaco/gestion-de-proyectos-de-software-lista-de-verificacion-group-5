## Criterios de control de cambios (2.5)

Todo cambio se clasifica antes de fusionarse. Mientras mayor el impacto, más controles exige.

| Tipo de cambio | Ejemplos | Requisitos para fusionar | Aprobaciones |
|---|---|---|---|
| **Menor** | Corrección de ortografía, comentarios, estilos | PR enlazado a issue | 1 |
| **Normal** | Nueva historia de usuario, corrección de un bug, nueva prueba | PR + issue + criterios de aceptación verificados + prueba asociada | 1 |
| **Mayor** | Cambios en el modelo de datos, cola de sincronización, `FUNDING.json`, árbol de dependencias, contratos inteligentes | PR + issue + documentación actualizada + plan de reversión + nota en `CHANGELOG.md` | 2 |

**Reglas generales**

1. Ningún cambio llega a `main` sin Pull Request y sin revisión de otra persona.
2. Un cambio que rompe una funcionalidad que operaba offline se trata como **mayor**, sin importar su tamaño.
3. Los cambios que corrigen defectos se etiquetan `correccion` y sus horas se registran como horas de corrección del Costo de la Calidad.
4. Si un cambio afecta una historia ya auditada, la historia vuelve a auditarse antes de continuar.

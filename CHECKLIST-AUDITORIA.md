## Lista de verificación

### A. Documentación (D)

- [ ] **D-01** `[B]` El README explica el propósito del Hub, cómo instalarlo/ejecutarlo y aclara que está pensado para conectividad limitada (offline-first).
- [ ] **D-02** `[B]` Las historias de usuario están registradas como issues con formato "Como / quiero / para" y criterios de aceptación.
- [ ] **D-03** `[B]` El 100% de las historias de usuario fue auditado (IA + revisión humana) antes de entrar a desarrollo y tiene la etiqueta `Auditoria-IA` (objetivo OQ-01).
- [ ] **D-04** `[B]` El Plan de Calidad v1.0 y el Informe de estándares Stellar/Drips están versionados en la carpeta `/docs`.
- [ ] **D-05** `[P]` El Costo de la Calidad por historia está registrado (issues `hora prevencion` y `hora correccion`) y el índice de prevención es ≥ 60%.
- [ ] **D-06** `[P]` Hay trazabilidad: cada historia de usuario enlaza a sus Pull Requests y a sus pruebas.
- [ ] **D-07** `[P]` Existe un `CHANGELOG.md` actualizado al cierre de cada sprint.
- [ ] **D-08** `[P]` Existe una bitácora de uso de IA (prompt, herramienta, resultado y verificación humana), en el mismo formato de la Sección 5 del Plan de Calidad.
- [ ] **D-09** `[P]` El repositorio incluye un archivo `LICENSE` de código abierto.
- [ ] **D-10** `[O]` La arquitectura está documentada, incluyendo la cola de sincronización (sync queue) y qué componentes son públicos y cuáles privados.
- [ ] **D-11** `[O]` La documentación fue revisada por alguien ajeno al autor y no tiene enlaces rotos ni secciones vacías.

### B. Código (C)

- [ ] **C-01** `[B]` El proyecto se ejecuta desde un clon limpio siguiendo únicamente el README.
- [ ] **C-02** `[B]` No hay credenciales, llaves de API, frases semilla de wallets ni datos reales de productores/locatarios en el repositorio (`.gitignore` + `.env.example`).
- [ ] **C-03** `[B]` Todo el código nuevo fue revisado por al menos un compañero antes de fusionarse.
- [ ] **C-04** `[P]` Hay convenciones de nombres y estilo definidas, con linter o formateador configurado.
- [ ] **C-05** `[P]` Cada criterio de aceptación de las historias del sprint tiene al menos una prueba (manual documentada o automatizada).
- [ ] **C-06** `[P]` Las funciones críticas operan sin conexión (meta OQ-03: ≥ 90%), verificado con una prueba en modo avión.
- [ ] **C-07** `[O]` No quedan `TODO`/`FIXME` ni código muerto sin un issue asociado.
- [ ] **C-08** `[O]` Las pruebas de las funciones críticas se ejecutan automáticamente (GitHub Actions).
- [ ] **C-09** `[O]` La sincronización con Stellar/Drips es opcional y diferida: si falla la red, el uso diario de la app no se bloquea.

### C. Control de cambios (CC)

- [ ] **CC-01** `[B]` La rama `main` está protegida: no se permite push directo.
- [ ] **CC-02** `[B]` Todo cambio entra mediante un Pull Request enlazado a un issue (`Closes #n`).
- [ ] **CC-03** `[B]` Cada Pull Request tiene al menos una aprobación de alguien distinto al autor.
- [ ] **CC-04** `[P]` Cada cambio está clasificado con etiqueta (`Feature`, `bug`, `correccion`, `documentacion`) y con tipo de impacto (menor / normal / mayor).
- [ ] **CC-05** `[P]` Los commits siguen una convención de mensajes (`feat:`, `fix:`, `docs:`…).
- [ ] **CC-06** `[P]` Cada sprint cierra con un release etiquetado (`v0.1`, `v0.2`…).
- [ ] **CC-07** `[O]` Los cambios a `FUNDING.json` y al árbol de dependencias tuvieron 2 aprobaciones y quedaron anotados en el `CHANGELOG.md`.
- [ ] **CC-08** `[O]` Los cambios mayores incluyen un plan de reversión (rollback) descrito en el Pull Request.

### D. Seguridad y ética (S)

- [ ] **S-01** `[P]` Está definido qué componentes se publican como código abierto y cuáles se mantienen privados.
- [ ] **S-02** `[P]` Ningún dato financiero individual de productores o locatarios se expone públicamente ni en la blockchain (solo totales agregados).
- [ ] **S-03** `[O]` Si hay smart contracts: existe una auditoría de seguridad externa documentada antes de cualquier despliegue a mainnet. *(N/A si no hay contratos.)*
- [ ] **S-04** `[O]` Las dependencias se revisan periódicamente (por ejemplo, Dependabot activo).

**Total de ítems:** 32 → `[B]` 10 · `[P]` 13 · `[O]` 9

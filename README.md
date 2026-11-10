# Grokayou



## Démarrer un nouveau projet

1. Lancer l'environnement :
   ```sh
   make up    # démarre le conteneur
   make run   # lance l'application
   ```

## Arborescence

```
.
├── cmd/
│   └── server/        # Point d'entrée (main.go). Un sous-dossier par exécutable
├── internal/          # Code privé de l'application (non importable par d'autres modules)
│   ├── handler/       # Couche entrée (HTTP, CLI, ...)
│   ├── service/       # Logique métier
│   ├── repository/    # Accès aux données
│   └── model/         # Structures du domaine
└── pkg/               # Code réutilisable par d'autres projets (rarement nécessaire)
```
## Commandes

`make` liste toutes les commandes : `up`, `down`, `off`, `shell`, `run`, `test`.

> Le `Dockerfile` crée un utilisateur d'UID `501` (macOS). Sous Linux, adapter à la sortie de `id -u`.

## Crédit

- [Tom DEPUSSAY](https://github.com/tomdepussay/)
- [Florent MENUS](https://github.com/FloMenus/)
# Pre-work · Taller de Git & GitHub

Tiempo estimado: 20–30 minutos. Hazlo **antes** de la sesión. Si algo falla, escríbelo en Slack antes de la clase.

## 1. Instalar

- **Git**: [git-scm.com](https://git-scm.com/downloads). En Windows instala *Git for Windows* (incluye Git Bash: usa esa terminal).
- **VS Code**: [code.visualstudio.com](https://code.visualstudio.com).
- **GitHub CLI** (`gh`): [cli.github.com](https://cli.github.com).
- Cuenta en [github.com](https://github.com) (si eres estudiante, solicita el [GitHub Student Developer Pack](https://education.github.com/pack)).

## 2. Conectar con GitHub

```bash
gh auth login     # GitHub.com → HTTPS → Login with a web browser
gh auth status    # debe decir "Logged in to github.com"
```

## 3. Configurar Git (copia y pega, cambiando nombre y email)

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global push.autoSetupRemote true
git config --global core.editor "code --wait"
git config --global alias.lg "log --oneline --graph --all --decorate"
```

## 4. Comprobar

```bash
git --version                 # cualquier versión reciente (2.40 o superior)
git config --global --list    # deben aparecer los valores del paso 3
```

Listo. En la sesión empezaremos comprobando `gh auth status`.

#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────────
# Demo de Gitflow completo · Taller T_01 Git & GitHub
# Es también la solución del Ejercicio 5 (tienda-online).
#
# Uso:
#   bash scripts/demo_gitflow.sh [carpeta]            # ejecuta todo de golpe
#   PAUSA=1 bash scripts/demo_gitflow.sh [carpeta]    # se para en cada paso (modo clase)
#
# Consejo para la clase: terminal partida en dos. En una, este script con PAUSA=1;
# en la otra, dentro de la carpeta creada:  watch -n1 git lg
# (Windows/Git Bash sin watch: ejecuta git lg a mano tras cada paso)
# ──────────────────────────────────────────────────────────────────────────────
set -euo pipefail

DIR="${1:-tienda-online}"
PAUSA="${PAUSA:-0}"

if [ -e "$DIR" ]; then
  echo "La carpeta '$DIR' ya existe. Bórrala o pasa otro nombre." >&2
  exit 1
fi

paso() {
  echo
  echo "════ $1"
  if [ "$PAUSA" = "1" ]; then read -r -p "   [Enter para continuar] " _; fi
}

grafo() { git log --oneline --graph --all --decorate; }

mkdir "$DIR" && cd "$DIR"

paso "1. Repo con main y commit inicial"
git init -q -b main
echo "# Tienda online" > README.md
git add README.md
git commit -q -m "chore: commit inicial"

paso "2. Rama permanente develop"
git switch -q -c develop

paso "3. feature/productos (2 commits)"
git switch -q -c feature/productos
printf "Producto A - 10€\nProducto B - 20€\nProducto C - 30€\n" > productos.txt
git add productos.txt
git commit -q -m "feat(productos): lista inicial"
printf "Producto A - 10€ - Camiseta\nProducto B - 20€ - Pantalón\nProducto C - 30€ - Zapatillas\n" > productos.txt
git commit -q -am "feat(productos): descripciones"

paso "4. feature/productos → develop (--no-ff)"
git switch -q develop
git merge -q --no-ff feature/productos -m "Merge branch 'feature/productos' into develop"
git branch -q -d feature/productos
grafo

paso "5. release/1.0.0: develop → main (+ tag v1.0.0) → develop"
git switch -q -c release/1.0.0
echo "1.0.0" > VERSION
git add VERSION
git commit -q -m "chore(release): versión 1.0.0"
git switch -q main
git merge -q --no-ff release/1.0.0 -m "Merge branch 'release/1.0.0'"
git tag -a v1.0.0 -m "release 1.0.0"
git switch -q develop
git merge -q --no-ff release/1.0.0 -m "Merge branch 'release/1.0.0' into develop"
git branch -q -d release/1.0.0
grafo

paso "6. feature/carrito desde develop (sin fusionar todavía)"
git switch -q -c feature/carrito
echo "carrito: añadir, quitar, total" > carrito.txt
git add carrito.txt
git commit -q -m "feat(carrito): lógica del carrito"

paso "7. hotfix/1.0.1: main → main (+ tag v1.0.1) → develop"
git switch -q main
git switch -q -c hotfix/1.0.1
sed -i.bak 's/Producto A - 10€/Producto A - 12€/' productos.txt && rm -f productos.txt.bak
echo "1.0.1" > VERSION
git commit -q -am "fix(productos): corregir precio del producto A"
git switch -q main
git merge -q --no-ff hotfix/1.0.1 -m "Merge branch 'hotfix/1.0.1'"
git tag -a v1.0.1 -m "hotfix 1.0.1"
git switch -q develop          # no hay release abierta → el hotfix va a develop
git merge -q --no-ff hotfix/1.0.1 -m "Merge branch 'hotfix/1.0.1' into develop"
git branch -q -d hotfix/1.0.1
grafo

paso "8. feature/carrito → develop (--no-ff)"
git merge -q --no-ff feature/carrito -m "Merge branch 'feature/carrito' into develop"
git branch -q -d feature/carrito

paso "9. release/1.1.0: develop → main (+ tag v1.1.0) → develop"
git switch -q -c release/1.1.0
echo "1.1.0" > VERSION
git commit -q -am "chore(release): versión 1.1.0"
git switch -q main
git merge -q --no-ff release/1.1.0 -m "Merge branch 'release/1.1.0'"
git tag -a v1.1.0 -m "release 1.1.0"
git switch -q develop
git merge -q --no-ff release/1.1.0 -m "Merge branch 'release/1.1.0' into develop"
git branch -q -d release/1.1.0

paso "10. Resultado"
grafo
echo
echo "Tags: $(git tag | tr '\n' ' ')"
echo "main:    VERSION=$(git show main:VERSION)  ·  $(git show main:productos.txt | head -1)"
echo "develop: VERSION=$(git show develop:VERSION)  ·  carrito.txt: $(git cat-file -e develop:carrito.txt && echo sí)"

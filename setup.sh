#!/bin/bash

# ============================================
# 🔧 Setup du repo pour test d'entretien Git
# 
# Ce script prépare le repo avec :
# - Branche main et develop
# - Un commit sur develop qui créera un conflit
# ============================================

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🔧 Préparation du repo de test Git...${NC}"
echo ""

# 1. Init Git
git init
echo -e "${GREEN}✓${NC} Git initialisé"

# 2. Config rebase par défaut
git config pull.rebase true
git config rebase.autoSquash true

# 3. Premier commit sur main
git add .
git commit -m "chore: initial commit"
echo -e "${GREEN}✓${NC} Initial commit créé"

# 4. Crée develop
git checkout -b develop
echo -e "${GREEN}✓${NC} Branche develop créée"

# 5. Ajoute un commit sur develop (pour exercice 4 - rebase)
echo "// Added on develop" >> src/app.js
git add src/app.js
git commit -m "feat(app): add comment on develop"
echo -e "${GREEN}✓${NC} Commit ajouté sur develop (pour test rebase)"

# 6. Modifie config.js sur develop (pour exercice 5 - conflit)
sed -i "s/APP_NAME: 'MyApp'/APP_NAME: 'ProductionApp'/" src/config.js
git add src/config.js
git commit -m "chore(config): update app name for production"
echo -e "${GREEN}✓${NC} Conflit préparé dans config.js"

# 7. Retourne sur develop (point de départ du candidat)
git checkout develop
echo ""

echo "============================================"
echo -e "${GREEN}✅ Setup terminé !${NC}"
echo "============================================"
echo ""
echo "📌 État actuel :"
echo "   - Branche : develop"
echo "   - main et develop ont des commits"
echo ""
echo "📋 Le candidat doit maintenant :"
echo "   1. Lire README.md"
echo "   2. Créer sa branche feature/*"
echo "   3. Faire les exercices"
echo ""
echo "🔍 Pour vérifier le travail du candidat :"
echo "   git log --oneline --graph --all"
echo ""

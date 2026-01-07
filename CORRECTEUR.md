# 📝 Guide du Correcteur

Comment évaluer le test Git du candidat.

---

## 🔍 Commandes de vérification

### Voir tout l'historique
```bash
git log --oneline --graph --all
```

### Vérifier le nom de branche
```bash
git branch -a
# Doit voir : feature/login ou feature/xxx (pas "ma-branche" ou "test")
```

### Vérifier les messages de commit
```bash
git log --oneline
# Doit voir : feat(auth): xxx, feat(user): xxx (format conventionnel)
```

### Vérifier qu'il n'y a pas de merge commits
```bash
git log --merges
# Doit être VIDE (aucun merge commit)
```

### Vérifier le squash
```bash
git log --oneline src/user.js
# Doit voir UN SEUL commit pour les 3 fonctions
```

---

## ✅ Grille d'évaluation détaillée

### 1. Nommage des branches (2 pts)

| Points | Critère |
|--------|---------|
| 2 | `feature/login` ou `feature/xxx-xxx` |
| 1 | `feature-login` (presque bon) |
| 0 | `mabranche`, `test`, `login` |

### 2. Messages de commit (2 pts)

| Points | Critère |
|--------|---------|
| 2 | `feat(auth): add login function` |
| 1 | `feat: add login` (sans scope) |
| 0 | `added login`, `wip`, `fix` |

### 3. Squash (2 pts)

| Points | Critère |
|--------|---------|
| 2 | 3 commits → 1 commit propre |
| 1 | Squash fait mais message pas clair |
| 0 | Pas de squash (3 commits visibles) |

### 4. Rebase (2 pts)

| Points | Critère |
|--------|---------|
| 2 | Historique linéaire, pas de merge |
| 1 | Rebase fait mais historique confus |
| 0 | Merge commit visible |

### 5. Résolution de conflit (1 pt)

| Points | Critère |
|--------|---------|
| 1 | Conflit résolu, code fonctionne |
| 0 | Marqueurs de conflit restants ou non résolu |

### 6. Historique final (1 pt)

| Points | Critère |
|--------|---------|
| 1 | Propre, lisible, logique |
| 0 | Désordonné, commits inutiles |

---

## 🎯 Interprétation du score

| Score | Niveau |
|-------|--------|
| 9-10 | ⭐ Excellent - Maîtrise complète |
| 7-8 | ✅ Bon - Connaît les bases avancées |
| 5-6 | ⚠️ Moyen - À former sur rebase/squash |
| < 5 | ❌ Insuffisant - Bases à revoir |

---

## 💬 Questions bonus à poser

1. **"Quelle est la différence entre `merge` et `rebase` ?"**
   > Rebase réécrit l'historique pour le rendre linéaire, merge crée un commit de fusion.

2. **"Pourquoi `--force-with-lease` plutôt que `--force` ?"**
   > Force-with-lease vérifie que personne n'a pushé entre temps, plus sécurisé.

3. **"Comment annuler un rebase en cours ?"**
   > `git rebase --abort`

4. **"Comment récupérer un commit perdu ?"**
   > `git reflog` pour trouver le hash, puis `git reset --hard <hash>`

5. **"Quand ne faut-il JAMAIS rebase ?"**
   > Sur une branche partagée/publique (main, develop)

---

## 🔄 Reset pour un nouveau candidat

```bash
# Supprimer tout et recommencer
rm -rf .git
./setup.sh
```

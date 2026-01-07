# 🎯 Test Git - Entretien Technique

Bienvenue ! Ce test évalue ta maîtrise de Git en conditions réelles.

**⏱️ Durée estimée :** 20-30 minutes

---

## 📋 Exercices

### Exercice 1 : Créer une branche conventionnelle
> Crée une branche pour ajouter une fonctionnalité de login

**Critères :**
- [ ] Nom de branche au format `feature/nom-de-la-feature`
- [ ] Branche créée depuis `develop`

---

### Exercice 2 : Commit conventionnel
> Ajoute une fonction `login()` dans `src/auth.js` et commit

**Critères :**
- [ ] Message au format : `type(scope): description`
- [ ] Types acceptés : `feat`, `fix`, `docs`, `refactor`, `test`, `chore`
- [ ] Exemple : `feat(auth): add login function`

---

### Exercice 3 : Plusieurs commits puis squash
> Ajoute 3 fonctionnalités dans `src/user.js` avec 3 commits séparés, puis squash-les en 1 seul

**Critères :**
- [ ] 3 commits créés initialement
- [ ] Squash réussi en 1 commit propre
- [ ] Message final clair et conventionnel

---

### Exercice 4 : Rebase avant merge
> La branche `develop` a avancé. Rebase ta branche dessus avant de merger.

**Critères :**
- [ ] Pas de commit de merge dans l'historique
- [ ] Historique linéaire après rebase
- [ ] Tes commits sont AU-DESSUS des commits de develop

---

### Exercice 5 : Résoudre un conflit
> Modifie `src/config.js` ligne 5. Un conflit va apparaître au rebase. Résous-le.

**Critères :**
- [ ] Conflit résolu correctement
- [ ] Rebase terminé avec succès
- [ ] Code fonctionnel après résolution

---

### Exercice 6 : Modifier le dernier commit
> Tu as fait une typo dans ton dernier message de commit. Corrige-la.

**Critères :**
- [ ] Utilisation de `--amend` ou `rebase -i`
- [ ] Message corrigé sans créer de nouveau commit

---

## 🏁 Rendu final attendu

```
main
  │
  └── develop
        │
        └── feature/ta-feature (tes commits propres, rebasés)
```

**Historique propre :**
```bash
git log --oneline --graph
# Doit montrer un historique LINÉAIRE, pas de merge commits
```

---

## 💡 Commandes utiles (aide-mémoire)

```bash
git checkout -b <branch>          # Créer une branche
git commit -m "message"           # Commit
git rebase -i HEAD~n              # Rebase interactif (squash)
git rebase <branch>               # Rebase sur une branche
git commit --amend                # Modifier dernier commit
git push --force-with-lease       # Push après rebase
```

---

## ✅ Grille d'évaluation

| Critère | Points |
|---------|--------|
| Nommage des branches | /2 |
| Messages de commit conventionnels | /2 |
| Squash réussi | /2 |
| Rebase (pas de merge commits) | /2 |
| Résolution de conflit | /1 |
| Historique final propre | /1 |
| **Total** | **/10** |

---

Bonne chance ! 🚀

## Multiplexeur 2 vers 1 

#Principe de fonctionnement 
Un multiplexeur (MUX) est un composant électronique permetant de selectionner l'entrée qui sera transmise en sortie. 

<img width="1062" height="517" alt="image" src="https://github.com/user-attachments/assets/a33ed46e-319b-4e8c-bd33-a566c5b41e6a" />



## MUX2_1 — Sans activation

| Sélection `A` | Sortie `Y` |
|:-------------:|:----------:|
| 0 | `in1` |
| 1 | `in0` |

## MUX2_1_2 — Avec activation active à 0

Le signal `E` autorise le fonctionnement à 0 et force la sortie à zéro à 1.

| `E` | Sélection `A` | Sortie `Y` |
|:---:|:-------------:|:----------:|
| 0 | 0 | `in1` |
| 0 | 1 | `in0` |
| 1 | quelconque | 0 sur tous les bits |

# Multiplexeur 4 vers 1

Deux versions de multiplexeur, de largeur paramétrable `N` (32 bits par défaut). Le signal `A` sélectionne l’entrée transmise à la sortie `Y`.

## Sans activation

| Sélection `A` | Sortie `Y` |
|:-------------:|:----------:|
| 00 | `in0` |
| 01 | `in1` |
| 10 | `in2` |
| 11 | `in3` |

## Avec activation active à 0

| `E` | Sélection `A` | Sortie `Y` |
|:---:|:-------------:|:----------:|
| 0 | 00 | `in0` |
| 0 | 01 | `in1` |
| 0 | 10 | `in2` |
| 0 | 11 | `in3` |
| 1 | quelconque | 0 sur tous les bits |

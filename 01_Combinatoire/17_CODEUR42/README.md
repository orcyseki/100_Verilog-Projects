# Encodeur 4 vers 2

L’entrée doit être one-hot : un seul bit à 1. OUT indique l’indice de ce bit.

| IN | OUT |
|---|---|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |
| Autre code binaire | xx |

## Exemple

IN=0100 donne OUT=10 ; IN=0101 donne xx en simulation.

## Particularités du code actuel

Le x décrit une valeur indéterminée en simulation, pas un niveau physique garanti. Ce module n’applique aucune priorité entre plusieurs bits actifs.

## Interface et fichiers

### Module `CODEUR42` — `CODEUR42`

Sources à inclure : [CODEUR42.v](CODEUR42/CODEUR42.srcs/sources_1/new/CODEUR42.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `IN` | `input` | `[3:0]` | Donnée d’entrée. |
| `OUT` | `output` | `[1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](CODEUR42/CODEUR42.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les quatre codes autorisés puis un code invalide 0101 sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

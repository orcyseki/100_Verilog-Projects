# Décodeur 3 vers 8

L’expression `out = 8'h1 << in` décale un 1 à la position indiquée par in. La sortie est one-hot : un seul bit vaut 1 pour une entrée binaire connue.

## Exemple

in=5 donne out=00100000.

## Interface et fichiers

### Module `DECODEUR38` — `DECODEUR38`

Sources à inclure : [DECODEUR38.v](DECODEUR38/DECODEUR38.srcs/sources_1/new/DECODEUR38.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[2:0]` | Donnée d’entrée. |
| `out` | `output` | `[7:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](DECODEUR38/DECODEUR38.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les huit codes de 0 à 7 sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

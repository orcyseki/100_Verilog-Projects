# Demi-soustracteur

Soustraction d’un bit b à un bit a : `d=a^b`, `bout=(~a)&b`. bout signale un emprunt lorsque a<b.

## Exemple

a=0, b=1 donnent d=1 et bout=1. La différence sur un bit est calculée modulo 2.

## Interface et fichiers

### Module `half_substractor` — `half_substractor`

Sources à inclure : [half_substractor.v](half_substractor/half_substractor.srcs/sources_1/new/half_substractor.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | 1 | Donnée d’entrée. |
| `b` | `input` | 1 | Donnée d’entrée. |
| `d` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |
| `bout` | `output` | 1 | Emprunt de sortie. |

Testbench : [testbench.v](half_substractor/half_substractor.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les quatre couples possibles sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

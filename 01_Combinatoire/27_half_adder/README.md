# Demi-additionneur

Addition de deux bits sans retenue d’entrée : `S=A^B`, `cout=A&B`. Le résultat complet est le nombre sur 2 bits {cout,S}.

## Exemple

A=1, B=1 donnent cout=1, S=0 : 1+1=2.

## Interface et fichiers

### Module `half_adder` — `half_adder`

Sources à inclure : [half_adder.v](half_adder/half_adder.srcs/sources_1/new/half_adder.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | 1 | Donnée d’entrée. |
| `B` | `input` | 1 | Donnée d’entrée. |
| `cout` | `output` | 1 | Retenue de sortie. |
| `S` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](half_adder/half_adder.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les quatre couples possibles sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Additionneur complet 1 bit

Le module calcule a+b+cin. `S=a^b^cin` est le bit de somme et `cout=((a^b)&cin)|(a&b)` est la retenue vers l’étage suivant.

## Exemple

a=b=cin=1 donnent cout=1, S=1 : la somme vaut 3.

## Interface et fichiers

### Module `full_adder` — `full_adder`

Sources à inclure : [full_adder.v](full_adder/full_adder.srcs/sources_1/new/full_adder.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | 1 | Donnée d’entrée. |
| `b` | `input` | 1 | Donnée d’entrée. |
| `cin` | `input` | 1 | Retenue d’entrée. |
| `cout` | `output` | 1 | Retenue de sortie. |
| `S` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](full_adder/full_adder.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les huit combinaisons de a, b et cin sont appliquées.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

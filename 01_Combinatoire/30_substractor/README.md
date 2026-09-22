# Soustracteur complet 1 bit

Le module calcule a−b−bin. d est le résultat modulo 2 ; bout indique l’emprunt vers le bit suivant. `d=a^b^bin` et `bout=((~a)&b)|(bin&(~(a^b)))`.

## Exemple

a=0, b=1, bin=1 donnent d=0 et bout=1, car 0−1−1=−2.

## Interface et fichiers

### Module `substractor` — `substractor`

Sources à inclure : [substractor.v](substractor/substractor.srcs/sources_1/new/substractor.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | 1 | Donnée d’entrée. |
| `b` | `input` | 1 | Donnée d’entrée. |
| `bin` | `input` | 1 | Emprunt d’entrée. |
| `bout` | `output` | 1 | Emprunt de sortie. |
| `d` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](substractor/substractor.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Les huit combinaisons de a, b et bin sont appliquées.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

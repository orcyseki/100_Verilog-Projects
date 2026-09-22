# Soustracteur N bits à propagation d’emprunt

N instances du soustracteur 1 bit calculent a−b−bin, du poids faible au poids fort. `borrow[0]=bin`, chaque bout alimente l’étage suivant, et `bout=borrow[N]`. d est le résultat modulo 2^N.

## Exemple

N=4 : a=2, b=3, bin=0 donnent d=1111 et bout=1.

## Particularités du code actuel

Le fichier substractor.v du projet est nécessaire à l’élaboration du module principal.

## Interface et fichiers

### Module `substractor_N_bit` — `substractor_N_bit`

Sources à inclure : [substractor.v](substractor_N_bit/substractor_N_bit.srcs/sources_1/new/substractor.v), [substractor_N_bit.v](substractor_N_bit/substractor_N_bit.srcs/sources_1/new/substractor_N_bit.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `b` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `bin` | `input` | 1 | Emprunt d’entrée. |
| `d` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `bout` | `output` | 1 | Emprunt de sortie. |

Testbench : [testbench.v](substractor_N_bit/substractor_N_bit.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; sept triplets (a,b,bin) sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

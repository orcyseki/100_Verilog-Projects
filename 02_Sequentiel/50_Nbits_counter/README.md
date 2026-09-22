# Compteur synchrone N bits

À chaque front montant, rst=1 remet out à zéro ; sinon le compteur est incrémenté de 1. Le comptage est modulo 2^N. Tous les bits sont commandés par la même horloge.

## Exemple

N=2 : après reset, les valeurs sont 0, 1, 2, 3, 0…

## Particularités du code actuel

Le reset est synchrone et actif à 1. Sans un front sous reset, la valeur initiale reste inconnue en simulation.

## Interface et fichiers

### Module `N_bit_counter` — `Nbits_counter`

Sources à inclure : [N_bit_counter.v](Nbits_counter/Nbits_counter.srcs/sources_1/new/N_bit_counter.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `rst` | `input` | 1 | Remise à zéro active à 1 ; temporalité précisée ci-dessus. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [test.v](Nbits_counter/Nbits_counter.srcs/sim_1/new/test.v). Module de simulation à sélectionner : `test`.

## Simulation

N=2 ; horloge de période 10 ns, reset initial puis nouvelle remise à zéro en cours de simulation.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

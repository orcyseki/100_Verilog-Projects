# Bascule RS synchrone

R et S sont lus au front montant de clk.

| S | R | Q après le front |
|---|---|---|
| 0 | 0 | Valeur conservée |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | x, état interdit |

## Exemple

S=1, R=0 force Q=1 au prochain front ; S=R=0 conserve ensuite ce 1.

## Particularités du code actuel

Il s’agit d’une bascule sur front, pas d’un verrou RS asynchrone. Sans initialisation, Q est inconnu jusqu’à un set/reset effectif ; x est une convention de simulation.

## Interface et fichiers

### Module `RS_flipflop` — `RS_flipflop`

Sources à inclure : [RS_flipflop.v](RS_flipflop/RS_flipflop.srcs/sources_1/new/RS_flipflop.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `R` | `input` | 1 | Commande de la bascule. |
| `S` | `input` | 1 | Commande de la bascule. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `Q` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](RS_flipflop/RS_flipflop.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Horloge de période 4 ns ; mémorisation, set, reset et état interdit.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

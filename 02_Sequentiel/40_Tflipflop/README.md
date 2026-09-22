# Bascule T avec reset asynchrone

reset=1 remet Q à zéro sans attendre l’horloge. Sinon, au front montant de clk, T=1 inverse Q et T=0 conserve Q.

## Exemple

Après reset, T=1 donne Q=1 puis 0 aux deux fronts suivants.

## Interface et fichiers

### Module `Tflipflop` — `Tflipflop`

Sources à inclure : [Tflipflop.v](Tflipflop/Tflipflop.srcs/sources_1/new/Tflipflop.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `T` | `input` | 1 | Commande de la bascule. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `reset` | `input` | 1 | Remise à zéro active à 1 ; temporalité précisée ci-dessus. |
| `Q` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [test.v](Tflipflop/Tflipflop.srcs/sim_1/new/test.v). Module de simulation à sélectionner : `test`.

## Simulation

Horloge de période 4 ns ; impulsion de reset initiale puis alternance entre maintien et basculement.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

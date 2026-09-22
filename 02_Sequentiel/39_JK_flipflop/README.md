# Bascule JK

Les entrées sont échantillonnées au front montant.

| J | K | Q après le front |
|---|---|---|
| 0 | 0 | Valeur conservée |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | Complément de Q |

## Exemple

Avec Q=0 et J=K=1, les fronts successifs produisent 1, 0, 1…

## Particularités du code actuel

Aucun reset dédié : Q reste inconnu tant qu’aucune commande set ou reset n’a fixé son état.

## Interface et fichiers

### Module `JK_flipflop` — `JK_flipflop`

Sources à inclure : [JK_flipflop.v](JK_flipflop/JK_flipflop.srcs/sources_1/new/JK_flipflop.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `J` | `input` | 1 | Commande de la bascule. |
| `K` | `input` | 1 | Commande de la bascule. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `Q` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](JK_flipflop/JK_flipflop.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Horloge de période 4 ns ; les quatre commandes sont appliquées.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

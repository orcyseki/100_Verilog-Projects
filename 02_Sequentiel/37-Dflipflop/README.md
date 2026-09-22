# Bascule D

Au front montant de clk, q reçoit d par affectation non bloquante. Entre deux fronts, q conserve sa valeur.

## Exemple

Si d=1 au front montant, q devient 1 et reste à 1 jusqu’au prochain échantillonnage.

## Particularités du code actuel

Aucun reset : q commence à x en simulation avant le premier front utile. Certains stimuli changent d exactement au front montant ; décaler les stimuli éviterait une course de simulation.

## Interface et fichiers

### Module `Dflipflop` — `Dflipflop`

Sources à inclure : [Dflipflop.v](Dflipflop/Dflipflop.srcs/sources_1/new/Dflipflop.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `d` | `input` | 1 | Donnée d’entrée. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `q` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](Dflipflop/Dflipflop.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Horloge de période 20 ns ; cinq affectations de d.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

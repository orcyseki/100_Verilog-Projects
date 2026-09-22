# Compteur asynchrone 4 bits en cascade

Chaque bascule D reboucle sa sortie complémentée sur d et bascule donc à chaque front montant de son horloge. La première utilise clk ; les suivantes utilisent respectivement q0, q1 et q2 comme horloge. rst est asynchrone, actif à 1.

## Exemple

Après reset à 0000, les valeurs stabilisées aux fronts de clk sont 1111, 1110, 1101… : le montage décompte modulo 16.

## Particularités du code actuel

Le chaînage sur les sorties q et les fronts montants donne un décompteur. Les transitions se propagent entre étages : out peut présenter des états transitoires. Le testbench ne couvre pas un cycle complet de 16 pas ; inclure Dflipflop.v.

## Interface et fichiers

### Module `RippleCounter` — `RippleCounter`

Sources à inclure : [Dflipflop.v](RippleCounter/RippleCounter.srcs/sources_1/new/Dflipflop.v), [RippleCounter.v](RippleCounter/RippleCounter.srcs/sources_1/new/RippleCounter.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `rst` | `input` | 1 | Remise à zéro active à 1 ; temporalité précisée ci-dessus. |
| `out` | `output` | `[3:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](RippleCounter/RippleCounter.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Horloge de période 20 ns ; reset pendant 20 ns puis 200 ns de fonctionnement.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

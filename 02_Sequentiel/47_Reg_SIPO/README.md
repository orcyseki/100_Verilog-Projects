# Registre SIPO 4 bits

Quatre bascules D partagent clk. À chaque front, q[0] reçoit E, q[1] l’ancien q[0], q[2] l’ancien q[1] et q[3] l’ancien q[2]. SIPO signifie entrée série, sorties parallèles.

## Exemple

Après avoir capturé successivement 1, 0, 1, 1, q[3:0]=1011 : le plus ancien bit est au poids fort.

## Particularités du code actuel

Aucun reset : les quatre étages deviennent connus après quatre captures connues. Inclure D_flipflop.v.

## Interface et fichiers

### Module `Reg_SIPO` — `Reg_SIPO`

Sources à inclure : [D_flipflop.v](Reg_SIPO/Reg_SIPO.srcs/sources_1/new/D_flipflop.v), [Reg_SIPO.v](Reg_SIPO/Reg_SIPO.srcs/sources_1/new/Reg_SIPO.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `E` | `input` | 1 | Donnée d’entrée. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `q` | `output` | `[3:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](Reg_SIPO/Reg_SIPO.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Horloge de période 10 ns ; injection de bits et observation des quatre sorties.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

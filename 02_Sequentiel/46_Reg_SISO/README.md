# Registre SISO 4 bits

Quatre bascules D en cascade partagent clk. Le bit E passe dans q[0], puis q[1], q[2], et enfin S. SISO signifie entrée série, sortie série.

## Exemple

Un bit échantillonné au front 1 atteint S au front 4 : il traverse quatre étages, soit trois périodes après sa première capture.

## Particularités du code actuel

Le registre n’a pas de reset ; S est initialement inconnu. Inclure D_flipflop.v avec Reg_SISO.v.

## Interface et fichiers

### Module `Reg_SISO` — `Reg_SISO`

Sources à inclure : [D_flipflop.v](Reg_SISO/Reg_SISO.srcs/sources_1/new/D_flipflop.v), [Reg_SISO.v](Reg_SISO/Reg_SISO.srcs/sources_1/new/Reg_SISO.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `E` | `input` | 1 | Donnée d’entrée. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `S` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](Reg_SISO/Reg_SISO.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Horloge de période 10 ns ; plusieurs bits sont injectés, puis la simulation continue pour observer leur propagation.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Registre PISO 4 bits

Au front montant, load=1 charge E dans les quatre bascules. Avec load=0, les bits se décalent vers le poids fort et un zéro entre au bit 0. S est relié au dernier étage q3.

## Exemple

Pour E=1011, S vaut 1 juste après le chargement, puis 0, 1, 1 aux trois fronts de décalage suivants, puis 0.

## Particularités du code actuel

Le premier bit E[3] est disponible dès le front de chargement. load est synchrone, actif à 1 et prioritaire sur le décalage. Aucun reset ; inclure Dflipflop.v.

## Interface et fichiers

### Module `Reg_PISO` — `Reg_PISO`

Sources à inclure : [Dflipflop.v](Reg_PISO/Reg_PISO.srcs/sources_1/new/Dflipflop.v), [Reg_PISO.v](Reg_PISO/Reg_PISO.srcs/sources_1/new/Reg_PISO.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `E` | `input` | `[3:0]` | Donnée d’entrée. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `load` | `input` | 1 | Chargement parallèle actif à 1. |
| `S` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](Reg_PISO/Reg_PISO.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb_Reg_PISO`.

## Simulation

Horloge de période 10 ns ; chargement de 1011, puis décalage pendant 50 ns.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

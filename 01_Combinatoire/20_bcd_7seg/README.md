# Décodeur hexadécimal vers 7 segments

La table traite les 16 codes de 0 à F, malgré le nom bcd_7seg. Les motifs correspondent à la convention `out[6:0]=abcdefg`, segments actifs à 1, à vérifier avec le câblage réel.

## Exemple

in=1 donne out=0110000 : les segments b et c sont actifs.

## Particularités du code actuel

Avec la convention abcdefg, les motifs de 6 et 9 sont incorrects : le RTL donne 1111101 et 1110011 ; les motifs usuels sont respectivement 1011111 et 1111011.

## Interface et fichiers

### Module `bcd_7seg` — `bcd_7seg`

Sources à inclure : [bcd_7seg.v](bcd_7seg/bcd_7seg.srcs/sources_1/new/bcd_7seg.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[3:0]` | Donnée d’entrée. |
| `out` | `output` | `[6:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](bcd_7seg/bcd_7seg.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Le testbench applique seulement 0 à 9 ; A à F ne sont pas testés.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

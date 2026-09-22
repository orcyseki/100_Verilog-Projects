# Encodeur prioritaire 4 vers 2

La chaîne if/else sélectionne le bit actif d’indice le plus élevé : priorité 3 > 2 > 1 > 0. Aucun bit actif donne également out=0.

## Exemple

in=0110 donne out=10 : le bit 2 est prioritaire sur le bit 1.

## Particularités du code actuel

Sans sortie valid, on ne distingue pas in=0000 de in=0001 à partir de out seul.

## Interface et fichiers

### Module `encodeur_prioritaire` — `encodeur_prioritaire`

Sources à inclure : [encodeur_prioritaire.v](encodeur_prioritaire/encodeur_prioritaire.srcs/sources_1/new/encodeur_prioritaire.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[3:0]` | Donnée d’entrée. |
| `out` | `output` | `[1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](encodeur_prioritaire/encodeur_prioritaire.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Six motifs incluent zéro, des bits isolés et plusieurs bits actifs.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

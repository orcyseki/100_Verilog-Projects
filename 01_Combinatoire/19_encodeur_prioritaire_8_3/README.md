# Encodeur prioritaire 8 vers 3

Le casez cherche le bit actif d’indice le plus élevé. Les ? rendent les bits de poids inférieur indifférents dans les motifs de sélection.

| Bit prioritaire | out actuel |
|---|---|
| 7 | 111 |
| 6 | 110 |
| 5 | 101 |
| 4 | 101 (erreur : attendu 100) |
| 3 | 011 |
| 2 | 010 |
| 1 | 001 |
| 0 ou aucun | 000 |

## Exemple

in=00010011 donne actuellement out=101, alors que l’indice prioritaire 4 devrait être codé 100.

## Particularités du code actuel

La branche 0001???? contient une erreur de codage. Les littéraux 7'b du testbench tronquent le bit de poids fort lorsqu’il est présent : le cas destiné à activer le bit 7 ne le teste pas réellement. Aucun signal valid n’est fourni.

## Interface et fichiers

### Module `encodeur_prioritaire_8_3` — `encodeur_prioritaire_8_3`

Sources à inclure : [encodeur_prioritaire_8_3.v](encodeur_prioritaire_8_3/encodeur_prioritaire_8_3.srcs/sources_1/new/encodeur_prioritaire_8_3.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[7:0]` | Donnée d’entrée. |
| `out` | `output` | `[2:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](encodeur_prioritaire_8_3/encodeur_prioritaire_8_3.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Six stimuli sont écrits avec le préfixe 7'b, bien que in soit sur 8 bits.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

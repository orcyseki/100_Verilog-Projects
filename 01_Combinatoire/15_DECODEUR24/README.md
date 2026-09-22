# Décodeur 2 vers 4

Le code binaire in active un seul bit de S : `S[in]=1`, les autres bits valent zéro.

| in | S |
|---|---|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

## Exemple

in=2 donne S=0100.

## Particularités du code actuel

Le case couvre les entrées binaires, mais n’a pas de default pour les valeurs contenant x/z.

## Interface et fichiers

### Module `DECODEUR24` — `DECODEUR24`

Sources à inclure : [DECODEUR24.v](DECODEUR24/DECODEUR24.srcs/sources_1/new/DECODEUR24.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[1:0]` | Donnée d’entrée. |
| `S` | `output` | `[3:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](DECODEUR24/DECODEUR24.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Les quatre entrées sont appliquées, dans l’ordre 0, 3, 1, 2.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

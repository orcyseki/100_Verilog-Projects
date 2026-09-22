# Multiplexeur 4 vers 1

Le sélecteur A sur 2 bits transmet `in0`, `in1`, `in2` ou `in3` pour A=0, 1, 2 ou 3. Une seconde variante ajoute E : E=0 autorise la sélection, E=1 force Y à zéro.

## Exemple

N=2, in2=11, A=2 : Y=11 si la variante est autorisée.

## Particularités du code actuel

Les deux variantes portent le même nom de module MUX41 : les compiler séparément. Sans autorisation, le case n’a pas de default ; une sélection contenant x/z peut conserver la valeur précédente en simulation.

## Interface et fichiers

### Module `MUX41` — `MUX41`

Sources à inclure : [MUX41.v](MUX41/MUX41.srcs/sources_1/new/MUX41.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in2` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in3` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | `[1:0]` | Sélection du chemin de données. |
| `Y` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [test.v](MUX41/MUX41.srcs/sim_1/new/test.v). Module de simulation à sélectionner : `test`.

### Module `MUX41` — `MUX41_1`

Sources à inclure : [MUX41.v](MUX41_1/MUX41_1.srcs/sources_1/new/MUX41.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in2` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in3` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | `[1:0]` | Sélection du chemin de données. |
| `E` | `input` | 1 | Autorisation ; polarité précisée ci-dessus. |
| `Y` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](MUX41_1/MUX41_1.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; chaque sélection est appliquée dans les deux variantes, puis E=1 dans la variante avec autorisation.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Utiliser un projet ou un jeu de sources distinct pour chaque variante MUX41. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

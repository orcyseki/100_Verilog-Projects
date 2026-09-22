# Multiplexeur 2 vers 1

Deux variantes transmettent un bus parmi deux. La sélection suit exactement le code : `A=1` sélectionne `in0`, `A=0` sélectionne `in1`.

| Variante | Condition | Y |
|---|---|---|
| MUX2_1 | A=0 | in1 |
| MUX2_1 | A=1 | in0 |
| MUX2_1_2 | E=0, A=0 | in1 |
| MUX2_1_2 | E=0, A=1 | in0 |
| MUX2_1_2 | E=1 | 0 |

<img width="517" height="300" alt="image" src="https://github.com/user-attachments/assets/a33ed46e-319b-4e8c-bd33-a566c5b41e6a" />

## Exemple

N=2, in0=10, in1=01 : A=1 donne Y=10. Dans la variante avec E, E=1 force Y=00.

## Particularités du code actuel

E est une autorisation active à 0 ; il ne commande pas une sortie haute impédance.

## Interface et fichiers

### Module `MUX2_1` — `MUX2_1`

Sources à inclure : [MUX2_1.v](MUX2_1/MUX2_1.srcs/sources_1/new/MUX2_1.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | 1 | Sélection du chemin de données. |
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `Y` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](MUX2_1/MUX2_1.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

### Module `MUX2_1_2` — `MUX2_1_2`

Sources à inclure : [MUX2_1_2.v](MUX2_1_2/MUX2_1_2.srcs/sources_1/new/MUX2_1_2.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | 1 | Sélection du chemin de données. |
| `E` | `input` | 1 | Autorisation ; polarité précisée ci-dessus. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `Y` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](MUX2_1_2/MUX2_1_2.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Les deux testbenches utilisent N=2 ; celui de MUX2_1_2 applique aussi E=1.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

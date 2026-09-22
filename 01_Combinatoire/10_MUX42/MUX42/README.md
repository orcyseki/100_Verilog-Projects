# Double multiplexeur 2 vers 1

Deux multiplexeurs partagent le même sélecteur A.

| A | Y0 | Y1 |
|---|---|---|
| 0 | in0 | in2 |
| 1 | in1 | in3 |

<img width="527" height="471" alt="image" src="https://github.com/user-attachments/assets/e47e1085-b6d1-4b74-8f84-8f69283d04b5" />

## Exemple

Avec in0=0, in1=1, in2=2, in3=3, A=1 produit Y0=1 et Y1=3.

## Particularités du code actuel

Le nom MUX42 désigne ici deux sélections simultanées parmi deux entrées, et non deux sorties sélectionnant librement parmi quatre entrées.

## Interface et fichiers

### Module `MUX42` — `MUX42`

Sources à inclure : [MUX42.v](MUX42.srcs/sources_1/new/MUX42.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in2` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in3` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | 1 | Sélection du chemin de données. |
| `Y1` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `Y0` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](MUX42.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; les deux états de A sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Multiplexeur 8 vers 1

A sur 3 bits choisit le bus transmis à Y : pour A=k entre 0 et 7, `Y=ink`. Le bloc always combinatoire décrit cette sélection avec un case.

<img width="462" height="703" alt="image" src="https://github.com/user-attachments/assets/72288c12-36cd-460e-9b67-dfe2e78db986" />

## Exemple

A=5 transmet in5 à Y.

## Particularités du code actuel

Le case n’a pas de default. Une sélection contenant x/z peut conserver Y en simulation. Des entrées aléatoires sur 2 bits peuvent être identiques : ce test ne garantit pas la détection d’une erreur de sélection.

## Interface et fichiers

### Module `MUX81` — `MUX81`

Sources à inclure : [MUX81.v](MUX81.srcs/sources_1/new/MUX81.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in0` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in1` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in2` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in3` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in4` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in5` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in6` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `in7` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | `[2:0]` | Sélection du chemin de données. |
| `Y` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](MUX81.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; les huit entrées reçoivent des valeurs pseudo-aléatoires, puis A parcourt 0 à 7.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Démultiplexeur 1 vers 4

Le bus in est dirigé vers la sortie sélectionnée par A. Pour A=k entre 0 et 3, Sk=in et toutes les autres sorties valent zéro. Les sorties sont initialisées à zéro au début du bloc combinatoire.

## Exemple

N=2, A=2, in=11 : S2=11 ; S0=S1=S3=00.

## Interface et fichiers

### Module `DEMUX14` — `DEMUX14`

Sources à inclure : [DEMUX14.v](DEMUX14/DEMUX14.srcs/sources_1/new/DEMUX14.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | `[1:0]` | Sélection du chemin de données. |
| `S0` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S1` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S2` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S3` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](DEMUX14/DEMUX14.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; les quatre valeurs de in sont appliquées pour chacune des quatre sélections.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

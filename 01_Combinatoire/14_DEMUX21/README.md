# Démultiplexeur 1 vers 2

Le module réellement déclaré est DEMUX12, malgré les noms du dossier et du fichier.

| A | S0 | S1 |
|---|---|---|
| 0 | 0 | in |
| 1 | in | 0 |

## Exemple

A=0 et in=11 donnent S0=00, S1=11 pour N=2.

## Interface et fichiers

### Module `DEMUX12` — `DEMUX21`

Sources à inclure : [DEMUX21.v](DEMUX21/DEMUX21.srcs/sources_1/new/DEMUX21.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | 1 | Sélection du chemin de données. |
| `S0` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S1` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](DEMUX21/DEMUX21.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; les quatre valeurs de in sont appliquées pour A=0 puis A=1.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

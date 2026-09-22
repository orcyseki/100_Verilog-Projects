# Démultiplexeur 1 vers 8

Pour A=k entre 0 et 7, Sk reçoit in. Toutes les autres sorties restent nulles. Pour A entre 8 et 15, aucune branche ne correspond et toutes les sorties restent nulles.

## Exemple

A=6 et in=10 : S6=10, toutes les autres sorties valent zéro.

## Particularités du code actuel

A est déclaré sur 4 bits dans le RTL et le testbench, alors que 3 bits suffisent pour sélectionner huit sorties.

## Interface et fichiers

### Module `DEMUX18` — `DEMUX18`

Sources à inclure : [DEMUX18.v](DEMUX18/DEMUX18.srcs/sources_1/new/DEMUX18.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `A` | `input` | `[3:0]` | Sélection du chemin de données. |
| `S0` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S1` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S2` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S3` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S4` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S5` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S6` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `S7` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](DEMUX18/DEMUX18.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; in parcourt 0 à 3 pour A de 0 à 7. Les valeurs A=8 à 15 ne sont pas testées.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

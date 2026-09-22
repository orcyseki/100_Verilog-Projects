# Porte ET bit à bit

L’expression `S = A & B` réalise un ET indépendant pour chaque paire de bits. Un bit de S vaut 1 uniquement si les deux bits correspondants valent 1.

<img width="400" height="282" alt="image" src="https://github.com/user-attachments/assets/7bf6280a-45b5-4170-a9fb-dae16cb9650a" />

## Exemple

N=4 : A=1100 et B=1010 donnent S=1000.

## Interface et fichiers

### Module `MODULE_AND` — `02_AND`

Sources à inclure : [MODULE_AND.v](AND.srcs/sources_1/new/MODULE_AND.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `S` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](AND.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

N=2 ; quatre couples de données, sans parcours exhaustif des 16 couples.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

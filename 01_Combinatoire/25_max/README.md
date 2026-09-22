# Maximum de deux bus

Le module compare A et B comme des entiers non signés. Il transmet A si A>B, sinon B. En cas d’égalité, le choix de B ne change pas la valeur du résultat.

## Exemple

N=4, A=9, B=6 donnent out=9.

## Interface et fichiers

### Module `max` — `max`

Sources à inclure : [max.v](max/max.srcs/sources_1/new/max.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](max/max.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; couples (0,1), (1,1) et (1,0).

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Buffer trois états

Le buffer transmet chaque bit de `in` vers `out` lorsque `E=1`. Lorsque `E=0`, tous les bits de sortie sont en haute impédance (`z`), et non à zéro.

| E | out |
|---|---|
| 0 | N bits à z |
| 1 | in |

<img width="738" height="382" alt="image" src="https://github.com/user-attachments/assets/7054d58c-4ac8-4c74-b184-960605cdd9d0" />

## Exemple

Avec N=2, in=10 : E=1 donne out=10 ; E=0 donne out=zz.

## Particularités du code actuel

Sur FPGA, une sortie trois états correspond généralement à une broche d’entrée/sortie ; son usage à l’intérieur de la logique dépend de l’outil et de la cible.

## Interface et fichiers

### Module `buffer` — `buffer_tristate`

Sources à inclure : [buffer.v](buffer_tristate.srcs/sources_1/new/buffer.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `E` | `input` | 1 | Autorisation ; polarité précisée ci-dessus. |

Testbench : [testbench.v](buffer_tristate.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; quatre valeurs de données avec alternance de E.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

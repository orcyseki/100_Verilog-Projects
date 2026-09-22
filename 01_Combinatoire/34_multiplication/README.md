# Multiplicateur non signé N × N bits

L’expression `s=a*b` fournit le produit complet de deux nombres non signés sur N bits. La sortie sur 2N bits peut représenter le produit maximal (2^N−1)^2.

## Exemple

N=2 : a=3 et b=3 donnent s=1001, soit 9.

## Particularités du code actuel

Le calcul est combinatoire : aucun pipeline, signal valid ou protocole de transfert n’est décrit.

## Interface et fichiers

### Module `multiplication` — `multiplication`

Sources à inclure : [multiplication.v](multiplication/multiplication.srcs/sources_1/new/multiplication.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `b` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `s` | `output` | `[2*N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](multiplication/multiplication.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; les 16 couples possibles sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

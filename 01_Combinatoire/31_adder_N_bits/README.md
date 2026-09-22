# Additionneur N bits avec retenue

L’affectation `{cout,s}=a+b+cin` fournit une somme sur N+1 bits. s contient les N bits faibles et cout la retenue de sortie. Les opérandes sont non signés.

## Exemple

N=4 : a=15, b=1, cin=0 donnent cout=1 et s=0000.

## Particularités du code actuel

cin est scalaire, mais plusieurs stimuli lui affectent des littéraux sur 2 bits : seul le bit faible est conservé (10 devient 0, 11 devient 1).

## Interface et fichiers

### Module `adder_N_bits` — `adder_N_bits`

Sources à inclure : [adder_N_bits.v](adder_N_bits/adder_N_bits.srcs/sources_1/new/adder_N_bits.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `a` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `b` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `cin` | `input` | 1 | Retenue d’entrée. |
| `cout` | `output` | 1 | Retenue de sortie. |
| `s` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](adder_N_bits/adder_N_bits.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; plusieurs couples et retenues sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

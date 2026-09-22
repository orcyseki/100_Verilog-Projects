# Convertisseur binaire vers Gray

Le bit de poids fort est conservé ; chaque autre bit de Gray est le XOR de deux bits binaires voisins. L’expression est `g = b ^ (b >> 1)`.

## Exemple

N=3 : b=110 donne g=101.

## Interface et fichiers

### Module `bin_to_gray` — `bin_to_gray`

Sources à inclure : [bin_to_gray.v](bin_to_gray/bin_to_gray.srcs/sources_1/new/bin_to_gray.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `b` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `g` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](bin_to_gray/bin_to_gray.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; cinq valeurs binaires sont appliquées : 0, 4, 2, 1 et 6.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

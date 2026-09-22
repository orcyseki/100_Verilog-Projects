# Multiplication par une puissance de deux

Le décalage logique `s=e<<k` calcule e×2^k modulo 2^N. Des zéros entrent par le poids faible ; les bits qui sortent du bus sont perdus.

## Exemple

N=4, e=3, k=2 donnent s=12. Avec e=5 et k=2, s=4 par troncature.

## Particularités du code actuel

k_max est la largeur en bits du bus k, et non sa valeur maximale. Pour k≥N, s vaut zéro pour une entrée connue. Aucun indicateur de débordement n’est fourni.

## Interface et fichiers

### Module `mult_by_2k` — `mult_by_2k`

Sources à inclure : [mult_by_2k.v](mult_by_2k/mult_by_2k.srcs/sources_1/new/mult_by_2k.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |
| `k_max` | `32` | Largeur du bus k en bits. |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `e` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `k` | `input` | `[k_max-1:0]` | Nombre de positions de décalage. |
| `s` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](mult_by_2k/mult_by_2k.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2, k_max=2 ; e parcourt 0 à 3 pour k=0, 1 et 2, avec des débordements.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Division par une puissance de deux

Le décalage logique `s=e>>k` calcule la partie entière de e/2^k pour un entier non signé. Les bits faibles sont abandonnés et des zéros entrent par le poids fort.

## Exemple

N=4, e=13, k=2 donnent s=3. Le reste 1 n’est pas fourni.

## Particularités du code actuel

k_max représente la largeur du bus k. Pour k≥N, s vaut zéro. Ce décalage logique ne réalise pas une division signée avec extension du signe.

## Interface et fichiers

### Module `div_by_2k` — `div_by_2K`

Sources à inclure : [div_by_2k.v](div_by_2K/div_by_2K.srcs/sources_1/new/div_by_2k.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |
| `k_max` | `32` | Largeur du bus k en bits. |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `e` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `k` | `input` | `[k_max-1:0]` | Nombre de positions de décalage. |
| `s` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](div_by_2K/div_by_2K.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2, k_max=2 ; les 16 couples e=0…3 et k=0…3 sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

# Convertisseur Gray vers binaire

Le but est de retrouver le binaire à partir de Gray. Le RTL actuel calcule `b = g ^ (g >> 1)`, qui n’est pas la conversion inverse générale. La conversion correcte nécessite un XOR cumulatif : `b[N-1]=g[N-1]`, puis `b[i]=b[i+1]^g[i]`.

## Exemple

N=3 : g=110 doit donner b=100 ; le code actuel donne 101.

## Particularités du code actuel

La conversion est à corriger pour N≥3. Le testbench ne compare pas les résultats à une référence et le stimulus 3'd8 ne représente pas une valeur 8 sur 3 bits.

## Interface et fichiers

### Module `gray_to_bin` — `gray_to_bin`

Sources à inclure : [gray_to_bin.v](gray_to_bin/gray_to_bin.srcs/sources_1/new/gray_to_bin.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `g` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `b` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](gray_to_bin/gray_to_bin.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; cinq affectations sont présentes. La dernière, 3'd8, est tronquée à 000.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

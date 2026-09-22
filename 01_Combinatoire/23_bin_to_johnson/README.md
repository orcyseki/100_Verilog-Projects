# Convertisseur binaire vers code Johnson

Le module combinatoire construit un motif de N bits à partir de b. Pour b<N, il place b+1 uns depuis le poids fort. Pour N≤b<2N, il place 2N−b uns depuis le poids faible. Les autres codes donnent zéro.

| b, avec N=3 | j actuel |
|---|---|
| 0 | 100 |
| 1 | 110 |
| 2 | 111 |
| 3 | 111 |
| 4 | 011 |
| 5 | 001 |
| 6, 7 | 000 |

## Exemple

Pour N=3, b=2 et b=3 produisent tous deux 111.

## Particularités du code actuel

La plage 0 à 2N−1 ne forme pas les 2N états distincts attendus d’un code Johnson : le motif tout à 1 est répété et zéro est absent de cette plage. N doit être positif ; la synthèse des boucles à borne variable dépend de l’outil.

## Interface et fichiers

### Module `bin_to_johnson` — `bin_to_johnson`

Sources à inclure : [bin_to_johnson.v](bin_to_johnson/bin_to_johnson.srcs/sources_1/new/bin_to_johnson.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `4` | Largeur de j ; 2N codes nominaux en entrée. |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `b` | `input` | `[$clog2(2*N)-1:0]` | Donnée d’entrée. |
| `j` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](bin_to_johnson/bin_to_johnson.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; b parcourt 0 à 7, y compris les codes hors plage 6 et 7.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

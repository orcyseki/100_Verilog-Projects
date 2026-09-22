# Registre parallèle N bits

Au front montant, rst=1 remet out à zéro ; sinon out reçoit in. Le reset est synchrone et actif à 1.

## Exemple

N=3 : in=101 et rst=0 au front donnent out=101.

## Particularités du code actuel

Le testbench désactive rst à 5 ns, avant le premier front montant à 10 ns : il ne vérifie pas la remise à zéro synchrone.

## Interface et fichiers

### Module `Nbitsregister` — `register`

Sources à inclure : [Nbitsregister.v](register/register.srcs/sources_1/new/Nbitsregister.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `in` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `rst` | `input` | 1 | Remise à zéro active à 1 ; temporalité précisée ci-dessus. |

Testbench : [testbench.v](register/register.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; horloge de période 20 ns, huit valeurs de données.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

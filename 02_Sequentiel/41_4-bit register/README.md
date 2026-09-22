# Registre parallèle 4 bits

Au front montant de clk, rst=1 remet Q à zéro ; sinon Q reçoit les quatre bits de D simultanément. Le reset est synchrone et actif à 1.

## Exemple

D=1010 et rst=0 au front donnent Q=1010. rst=1 au front donne Q=0000.

## Particularités du code actuel

Dans le testbench, rst redescend à 5 ns et le premier front montant arrive à 10 ns : le reset synchrone n’est donc pas réellement testé.

## Interface et fichiers

### Module `register` — `4-bit register`

Sources à inclure : [4-bit register.v](4-bit%20register/4-bit%20register.srcs/sources_1/new/4-bit%20register.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `D` | `input` | `[3:0]` | Donnée d’entrée. |
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `rst` | `input` | 1 | Remise à zéro active à 1 ; temporalité précisée ci-dessus. |
| `Q` | `output` | `[3:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](4-bit%20register/4-bit%20register.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Horloge de période 20 ns ; plusieurs mots parallèles sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

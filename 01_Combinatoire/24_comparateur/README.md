# Comparateur non signé paramétrable

Le paramètre type choisit la comparaison à l’élaboration : 0 pour A<B, 1 pour A>B, 2 pour A==B. Toute autre valeur fixe S à zéro. S vaut un bit ; A et B sont des bus non signés.

## Exemple

N=2, A=1, B=3 : type=0 donne S=1 ; type=1 et type=2 donnent S=0.

## Particularités du code actuel

type est un identificateur réservé en SystemVerilog. Compiler ce code en mode Verilog, ou renommer le paramètre pour une utilisation SystemVerilog.

## Interface et fichiers

### Module `comparateur` — `comparateur`

Sources à inclure : [comparateur.v](comparateur/comparateur.srcs/sources_1/new/comparateur.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |
| `type` | `0` | 0 : inférieur ; 1 : supérieur ; 2 : égal. |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `S` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](comparateur/comparateur.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

Trois instances N=2 testent simultanément les comparaisons inférieur, supérieur et égal sur huit couples.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Conserver le type de fichier Verilog pour ce module. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

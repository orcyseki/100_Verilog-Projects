# Porte NAND

L’expression `S = ~(A & B)` réalise le complément du ET, bit par bit. Un bit de S vaut 0 uniquement si les deux bits correspondants valent 1.

<img width="197" height="113" alt="image" src="https://github.com/user-attachments/assets/c4296b85-3f74-4f16-b663-700c414c3c4a" />

## Exemple

N=4 : A=1100 et B=1010 donnent S=0111.

## Interface et fichiers

### Module `NAND` — `NAND`

Sources à inclure : [NAND.v](NAND.srcs/sources_1/new/NAND.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `S` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](NAND.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; quatre couples de données.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

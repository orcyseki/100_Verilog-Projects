# Porte XOR

La fonction visée est le OU exclusif bit à bit : `S = A ^ B`. Un bit de résultat vaut 1 lorsque les deux bits d’entrée diffèrent.

<img width="215" height="187" alt="image" src="https://github.com/user-attachments/assets/ffa5f811-3f1c-4db3-8d6a-5d9f2c1ecfef" />

## Exemple

N=4 : A=1100 et B=1010 donnent le résultat attendu 0110.

## Particularités du code actuel

Dans le RTL actuel, S est déclaré input alors qu’il est piloté par assign et utilisé comme sortie dans le testbench. Sa direction doit être corrigée en output ; la table d’interface ci-dessous conserve la déclaration actuelle.

## Interface et fichiers

### Module `XOR_GATE` — `XOR`

Sources à inclure : [XOR_GATE.v](XOR.srcs/sources_1/new/XOR_GATE.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `S` | `input` | `[N-1:0]` | Résultat XOR visé ; direction input erronée dans le RTL. |

Testbench : [tb.v](XOR.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

N=1 ; les quatre couples d’entrées sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

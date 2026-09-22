# Registre à décalage vers la droite

À chaque front montant, `out <= {in,out[N-1:1]}`. Le bit série in entre au poids fort ; les anciens bits se déplacent vers les indices inférieurs et l’ancien bit 0 est perdu.

## Exemple

N=4, out=1010 et in=1 donnent out=1101 au prochain front.

## Particularités du code actuel

Prévoir N≥2 avec cette sélection de bits. Aucun reset : N échantillonnages de bits connus remplissent le registre. Certains stimuli coïncident avec des fronts montants.

## Interface et fichiers

### Module `shiftright_register` — `shiftright_register1`

Sources à inclure : [shiftright_register.v](shiftright_register1/shiftright_register1.srcs/sources_1/new/shiftright_register.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `in` | `input` | 1 | Donnée d’entrée. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](shiftright_register1/shiftright_register1.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; horloge de période 20 ns, séquence de bits série.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

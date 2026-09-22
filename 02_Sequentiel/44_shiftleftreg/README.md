# Registre à décalage vers la gauche

À chaque front montant, `out <= {out[N-2:0],in}`. in entre au bit 0 ; les anciens bits se déplacent vers les indices supérieurs et le poids fort est perdu.

## Exemple

N=4, out=1010 et in=1 donnent out=0101 au prochain front.

## Particularités du code actuel

Prévoir N≥2. Aucun reset : le contenu initial est inconnu. Certains stimuli coïncident avec des fronts montants ; les appliquer sur le front descendant éviterait une course.

## Interface et fichiers

### Module `shiftleftreg` — `shiftleftreg`

Sources à inclure : [shiftleftreg.v](shiftleftreg/shiftleftreg.srcs/sources_1/new/shiftleftreg.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `in` | `input` | 1 | Donnée d’entrée. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](shiftleftreg/shiftleftreg.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=3 ; horloge de période 20 ns, séquence de bits série.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

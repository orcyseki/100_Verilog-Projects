# Registre à décalage bidirectionnel

Au front montant, sel=1 décale vers la gauche et insère in au bit 0 ; sel=0 décale vers la droite et insère in au poids fort.

## Exemple

N=4, out=1010, in=1 : sel=1 donne 0101 ; sel=0 donne 1101.

## Particularités du code actuel

Prévoir N≥2. Aucun reset ni commande de maintien. Le contenu initial est inconnu et certains changements d’entrée coïncident avec des fronts montants.

## Interface et fichiers

### Module `shiftbireg` — `shiftbireg`

Sources à inclure : [shiftbireg.v](shiftbireg/shiftbireg.srcs/sources_1/new/shiftbireg.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `in` | `input` | 1 | Donnée d’entrée. |
| `sel` | `input` | 1 | Sens : 0 droite, 1 gauche. |
| `out` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [testbench.v](shiftbireg/shiftbireg.srcs/sim_1/new/testbench.v). Module de simulation à sélectionner : `testbench`.

## Simulation

N=2 ; horloge de période 20 ns, décalage à droite puis à gauche.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

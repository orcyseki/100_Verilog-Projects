# Porte NOR

La fonction visée est `S = ~(A | B)`. Pour un bit, S vaut 1 uniquement lorsque A et B valent 0. Le code utilise la primitive `nor(S,A,B)`.

<img width="198" height="103" alt="image" src="https://github.com/user-attachments/assets/ca9a840d-bc96-41c2-80be-8010a092f9a1" />

## Exemple

Pour N=1 : A=0, B=0 donnent S=1 ; les trois autres couples donnent S=0.

## Particularités du code actuel

La primitive de porte utilisée seule est scalaire. La largeur N=32 annoncée ne constitue pas une implémentation vectorielle correcte ; utiliser une affectation bit à bit ou un tableau de primitives pour N>1.

## Interface et fichiers

### Module `NOR` — `04_NOR`

Sources à inclure : [NOR.v](NOR.srcs/sources_1/new/NOR.v).

| Paramètre | Valeur par défaut | Rôle |
|---|---|---|
| `N` | `32` | Largeur des données (nombre de bits). |

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `A` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `B` | `input` | `[N-1:0]` | Donnée d’entrée. |
| `S` | `output` | `[N-1:0]` | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [TEST.v](NOR.srcs/sim_1/new/TEST.v). Module de simulation à sélectionner : `TEST`.

## Simulation

Le module TEST est vide : aucun circuit n’est instancié et aucun stimulus n’est fourni.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

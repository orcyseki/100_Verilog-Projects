# Registre PIPO 4 bits

Quatre bascules D indépendantes échantillonnent e0 à e3 au même front montant. Chaque qi reçoit ei. PIPO signifie entrées parallèles, sorties parallèles.

## Exemple

e3e2e1e0=1010 au front donne q3q2q1q0=1010.

## Particularités du code actuel

Aucun reset ni autorisation. Inclure Dflipflop.v. Certains stimuli changent au front montant ; les décaler éviterait une course de simulation.

## Interface et fichiers

### Module `Reg_PIPO` — `Reg_PIPO`

Sources à inclure : [Dflipflop.v](Reg_PIPO/Reg_PIPO.srcs/sources_1/new/Dflipflop.v), [Reg_PIPO.v](Reg_PIPO/Reg_PIPO.srcs/sources_1/new/Reg_PIPO.v).

| Signal | Direction RTL | Largeur / plage | Rôle |
|---|---|---|---|
| `clk` | `input` | 1 | Horloge ; fronts montants actifs. |
| `e0` | `input` | 1 | Donnée d’entrée. |
| `e1` | `input` | 1 | Donnée d’entrée. |
| `e2` | `input` | 1 | Donnée d’entrée. |
| `e3` | `input` | 1 | Donnée d’entrée. |
| `q0` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |
| `q1` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |
| `q2` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |
| `q3` | `output` | 1 | Résultat ou état mémorisé ; voir le fonctionnement. |

Testbench : [tb.v](Reg_PIPO/Reg_PIPO.srcs/sim_1/new/tb.v). Module de simulation à sélectionner : `tb`.

## Simulation

Horloge de période 20 ns ; cinq mots parallèles sont appliqués.

Dans Vivado, créer un projet RTL, ajouter les sources indiquées comme **Design Sources** et le testbench comme **Simulation Sources**, puis sélectionner son module comme sommet de simulation. Lancer **Run Behavioral Simulation** et observer les entrées et sorties dans le chronogramme. Les délais des testbenches sont exprimés avec leur directive `timescale`.

Les stimuli existants ne contiennent pas de comparaison automatique à une référence. Leur présence ne constitue donc pas une validation fonctionnelle complète. Cette documentation repose sur la lecture des sources ; les simulations n’ont pas été exécutées lors de sa rédaction.

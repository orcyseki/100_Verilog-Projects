# 100 Verilog Projects

Ce dépôt regroupe une série de projets et d’exercices réalisés en **Verilog HDL** dans le but de progresser progressivement en conception numérique et en développement FPGA.

L’objectif est de couvrir les principaux concepts de la logique numérique, depuis les circuits combinatoires simples jusqu’à des architectures plus complexes.

## Objectifs

- Approfondir la maîtrise du langage Verilog
- Concevoir des circuits combinatoires et séquentiels
- Développer de bonnes pratiques de description matérielle
- Utiliser des testbenches pour vérifier les designs
- Progresser vers des architectures numériques plus complexes
- Constituer une collection de 100 projets Verilog

## Organisation du dépôt

Les projets sont classés par catégories afin de suivre une progression logique.

Chaque projet peut contenir :

- le module Verilog (`.v`)
- son testbench
- un README décrivant le fonctionnement du circuit


**État du dépôt : 51 dossiers de projets présents / objectif de 100.**

La numérotation va de 00 à 51 ; le dossier 36 est absent. Les variantes MUX21 et MUX41 sont regroupées dans leurs dossiers respectifs.

## Catalogue des projets

Les README décrivent les interfaces, le fonctionnement, les testbenches présents et les limites relevées dans le code. Les simulations n’ont pas été exécutées pour cette mise à jour documentaire.

| N° | Projet | Catégorie |
|---|---|---|
| 00 | [Buffer trois états](01_Combinatoire/00_buffer_tristate/buffer_tristate/README.md) | Combinatoire |
| 01 | [Inverseur logique](01_Combinatoire/01_NOT_GATE/README.md) | Combinatoire |
| 02 | [Porte ET bit à bit](01_Combinatoire/02_AND/README.md) | Combinatoire |
| 03 | [Porte OU bit à bit](01_Combinatoire/03_OR/module_OR/README.md) | Combinatoire |
| 04 | [Porte NOR](01_Combinatoire/04_NOR/README.md) | Combinatoire |
| 05 | [Porte XOR](01_Combinatoire/05_XOR/XOR/README.md) | Combinatoire |
| 06 | [Porte NAND](01_Combinatoire/06_NAND/NAND/README.md) | Combinatoire |
| 07 | [Porte XNOR](01_Combinatoire/07_XNOR/XNOR/README.md) | Combinatoire |
| 08 | [Multiplexeur 2 vers 1](01_Combinatoire/08_MUX21/README.md) | Combinatoire |
| 09 | [Multiplexeur 4 vers 1](01_Combinatoire/09_MUX41/README.md) | Combinatoire |
| 10 | [Double multiplexeur 2 vers 1](01_Combinatoire/10_MUX42/MUX42/README.md) | Combinatoire |
| 11 | [Multiplexeur 8 vers 1](01_Combinatoire/11_MUX81/MUX81/README.md) | Combinatoire |
| 12 | [Démultiplexeur 1 vers 4](01_Combinatoire/12_DEMUX14/README.md) | Combinatoire |
| 13 | [Démultiplexeur 1 vers 8](01_Combinatoire/13_DEMUX18/README.md) | Combinatoire |
| 14 | [Démultiplexeur 1 vers 2](01_Combinatoire/14_DEMUX21/README.md) | Combinatoire |
| 15 | [Décodeur 2 vers 4](01_Combinatoire/15_DECODEUR24/README.md) | Combinatoire |
| 16 | [Décodeur 3 vers 8](01_Combinatoire/16_DECODEUR38/README.md) | Combinatoire |
| 17 | [Encodeur 4 vers 2](01_Combinatoire/17_CODEUR42/README.md) | Combinatoire |
| 18 | [Encodeur prioritaire 4 vers 2](01_Combinatoire/18_encodeur_prioritaire/README.md) | Combinatoire |
| 19 | [Encodeur prioritaire 8 vers 3](01_Combinatoire/19_encodeur_prioritaire_8_3/README.md) | Combinatoire |
| 20 | [Décodeur hexadécimal vers 7 segments](01_Combinatoire/20_bcd_7seg/README.md) | Combinatoire |
| 21 | [Convertisseur binaire vers Gray](01_Combinatoire/21_bin_to_gray/README.md) | Combinatoire |
| 22 | [Convertisseur Gray vers binaire](01_Combinatoire/22_gray_to_bin/README.md) | Combinatoire |
| 23 | [Convertisseur binaire vers code Johnson](01_Combinatoire/23_bin_to_johnson/README.md) | Combinatoire |
| 24 | [Comparateur non signé paramétrable](01_Combinatoire/24_comparateur/README.md) | Combinatoire |
| 25 | [Maximum de deux bus](01_Combinatoire/25_max/README.md) | Combinatoire |
| 26 | [Minimum de deux bus](01_Combinatoire/26_min/README.md) | Combinatoire |
| 27 | [Demi-additionneur](01_Combinatoire/27_half_adder/README.md) | Combinatoire |
| 28 | [Demi-soustracteur](01_Combinatoire/28_half_substractor/README.md) | Combinatoire |
| 29 | [Additionneur complet 1 bit](01_Combinatoire/29_full_adder/README.md) | Combinatoire |
| 30 | [Soustracteur complet 1 bit](01_Combinatoire/30_substractor/README.md) | Combinatoire |
| 31 | [Additionneur N bits avec retenue](01_Combinatoire/31_adder_N_bits/README.md) | Combinatoire |
| 32 | [Soustracteur N bits à propagation d’emprunt](01_Combinatoire/32_substractor_N_bit/README.md) | Combinatoire |
| 33 | [Multiplication par une puissance de deux](01_Combinatoire/33_mult_by_2k/README.md) | Combinatoire |
| 34 | [Multiplicateur non signé N × N bits](01_Combinatoire/34_multiplication/README.md) | Combinatoire |
| 35 | [Division par une puissance de deux](01_Combinatoire/35_div_by_2k/README.md) | Combinatoire |
| 37 | [Bascule D](02_Sequentiel/37-Dflipflop/README.md) | Séquentiel |
| 38 | [Bascule RS synchrone](02_Sequentiel/38-RS_flipflop/README.md) | Séquentiel |
| 39 | [Bascule JK](02_Sequentiel/39_JK_flipflop/README.md) | Séquentiel |
| 40 | [Bascule T avec reset asynchrone](02_Sequentiel/40_Tflipflop/README.md) | Séquentiel |
| 41 | [Registre parallèle 4 bits](02_Sequentiel/41_4-bit%20register/README.md) | Séquentiel |
| 42 | [Registre parallèle N bits](02_Sequentiel/42_Nbitsregister/README.md) | Séquentiel |
| 43 | [Registre à décalage vers la droite](02_Sequentiel/43_shiftright_register/README.md) | Séquentiel |
| 44 | [Registre à décalage vers la gauche](02_Sequentiel/44_shiftleftreg/README.md) | Séquentiel |
| 45 | [Registre à décalage bidirectionnel](02_Sequentiel/45_shiftbireg/README.md) | Séquentiel |
| 46 | [Registre SISO 4 bits](02_Sequentiel/46_Reg_SISO/README.md) | Séquentiel |
| 47 | [Registre SIPO 4 bits](02_Sequentiel/47_Reg_SIPO/README.md) | Séquentiel |
| 48 | [Registre PISO 4 bits](02_Sequentiel/48_Reg_PISO/README.md) | Séquentiel |
| 49 | [Registre PIPO 4 bits](02_Sequentiel/49_reg_PIPO/README.md) | Séquentiel |
| 50 | [Compteur synchrone N bits](02_Sequentiel/50_Nbits_counter/README.md) | Séquentiel |
| 51 | [Compteur asynchrone 4 bits en cascade](02_Sequentiel/51_RippleCounter/README.md) | Séquentiel |

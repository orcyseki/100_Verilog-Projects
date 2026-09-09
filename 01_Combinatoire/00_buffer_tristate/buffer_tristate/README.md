# Buffer trois états — Verilog

## Objectif

Implémenter en Verilog un buffer trois états (*tri-state buffer*) et comprendre le fonctionnement d’une sortie en haute impédance.

## 1- Principe de fonctionnement


<img width="738" height="382" alt="image" src="https://github.com/user-attachments/assets/7054d58c-4ac8-4c74-b184-960605cdd9d0" />

## Entrées et sortie

| Signal | Direction | Description                         |
| ------ | --------- | ----------------------------------- |
| `in`    | Entrée    | Donnée à transmettre                |
| `E`   | Entrée    | Activation du buffer, active à 1    |
| `out`    | Sortie    | Donnée transmise ou haute impédance |

## Table de vérité

| `E` | `in` | `out` |
| ---- | --- | --- |
| 0    | 0   | Z   |
| 0    | 1   | Z   |
| 1    | 0   | 0   |
| 1    | 1   | 1   |


## 2- Vérification par simulation


|   | `in` | `E` | `out` |
|:-----:|:----:|:---:|:-----:|
| 1 | 00 | 0 | ZZ |
| 2 | 01 | 1 | 01 |
| 3 | 10 | 0 | ZZ |
| 4 | 11 | 1 | 11 |





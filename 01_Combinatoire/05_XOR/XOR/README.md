# Porte XOR (OU exclusif)

Porte OU exclusif bit à bit, de largeur paramétrable `N` (32 bits par défaut).

<img width="215" height="187" alt="image" src="https://github.com/user-attachments/assets/ffa5f811-3f1c-4db3-8d6a-5d9f2c1ecfef" />


## Principe de fonctionnement

| `A` | `B` | `S` |
|:---:|:---:|:---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

La table s’applique à chaque paire de bits de même position.

=

# Porte XOR (OU exclusif)

Porte OU exclusif bit à bit, de largeur paramétrable `N` (32 bits par défaut).

## Principe de fonctionnement

| `A` | `B` | `S` |
|:---:|:---:|:---:|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

La table s’applique à chaque paire de bits de même position.

=

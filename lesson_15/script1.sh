#!/bin/bash
set -eu

myf() { # я не очень понял зачем для этого задания писать функцию
    echo $(($1 * $2))
}


if [ $(($(myf $1 $2)%2)) -eq 0 ]; then
# если остаток от деления (%) умножения (myf) двух чисел ($1 и $2) равен 0,
# то:
    echo "it's even"
    exit 0
else # иначе:
    echo "it's odd"
    exit 1
fi
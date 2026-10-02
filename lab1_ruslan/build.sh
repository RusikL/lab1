#!/bin/sh
set -eu
cd "$(dirname "$0")"
mkdir -p build
for source in pw01-*.c; do
    name="${source%.c}"
    gcc -std=c11 -Wall -Wextra "$source" -o "build/$name"
done
printf 'Сборка завершена. Пример запуска: ./build/pw01-1\n'

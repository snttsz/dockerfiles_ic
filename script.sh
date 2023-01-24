#!/bin/bash
echo Quantidade de cores do processador a serem utilizados:
read core
docker run --rm -it -d -e QTDCORE=${core} --volume="$PWD"/bahiart:/home/bahiart:rw --volume="$PWD"/libsetplay:/home/libsetplay:rw --name build builder
docker logs --follow build

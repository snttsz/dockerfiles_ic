#!/bin/bash
echo Quantidade de cores a ser utilizada:
read core
if [ ! ${core} ]; then
	echo Quantidade de cores não definida. Serão utilizados 8 por padrão.
	core=8
	sleep 2
fi
docker run --rm -it -d -e QTDCORE=${core} --volume="$PWD"/bahiart:/home/bahiart:rw --volume="$PWD"/libsetplay:/home/libsetplay:rw --name build builder
docker logs --follow build

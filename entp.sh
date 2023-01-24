core="${1}"
cd /home/libsetplay/ && make \
&& cp lib/libsetplay.a ../bahiart/libs/libsetplay/lib/ && cd ../bahiart/ \
&& make clean && make -j${core}
echo core ${core}

#/usr/bin/sh
cfg=$(pwd)/config
echo building $1
#rm -rf "/home/adam/dev/zmk/app/build/*"
cd /home/adam/dev/zmk/app

west build -p -d build/$1 -b nice_nano_v2 -- -DSHIELD=kiboard_$1 -DZMK_CONFIG="$cfg"
echo "build complete"
cp ~/dev/zmk/app/build/$1/zephyr/zmk.uf2 "$cfg/../$1.uf2"

#cp /home/adam/dev/zmk/app/build/$1/zephyr/zmk.uf2 /run/media/adam/NICENANO
#echo "copying /home/adam/dev/zmk/app/build/$1/zephyr/zmk.uf2 /run/media/adam/NICENANO"
#echo "built from $cfg"


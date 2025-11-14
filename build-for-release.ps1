if (Test-Path build-pico) {
    del build-pico -force -recurse
}
if (Test-Path build-pico2) {
    del build-pico2 -force -recurse
}
if (Test-Path build-pico-w) {
    del build-pico-w -force -recurse
}
if (Test-Path build-pico2-w) {
    del build-pico2-w -force -recurse
}
cmake -S . -B build-pico -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico
cmake -S . -B build-pico2 -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico2
cmake -S . -B build-pico-w -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico_w
cmake -S . -B build-pico2-w -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico2_w
cmake --build build-pico --config Release --parallel
cmake --build build-pico2 --config Release --parallel
cmake --build build-pico-w --config Release --parallel
cmake --build build-pico2-w --config Release --parallel
#echo "------------------------------------------------------"
#picotool info -a build-pico/pico-jxgLABO.elf
copy build-pico/pico-jxgLABO.uf2 release/pico-jxgLABO.uf2
#echo "------------------------------------------------------"
#picotool info -a build-pico2/pico-jxgLABO.elf
copy build-pico2/pico-jxgLABO.uf2 release/pico2-jxgLABO.uf2
#echo "------------------------------------------------------"
#picotool info -a build-pico-w/pico-jxgLABO.elf
copy build-pico-w/pico-jxgLABO.uf2 release/pico-w-jxgLABO.uf2
#echo "------------------------------------------------------"
#picotool info -a build-pico2-w/pico-jxgLABO.elf
copy build-pico2-w/pico-jxgLABO.uf2 release/pico2-w-jxgLABO.uf2
echo ""
echo "created: release/pico-jxgLABO.uf2 release/pico2-jxgLABO.uf2 release/pico-w-jxgLABO.uf2 release/pico2-w-jxgLABO.uf2"

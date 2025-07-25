if (Test-Path build-pico) {
    del build-pico -force -recurse
}
if (Test-Path build-pico2) {
    del build-pico2 -force -recurse
}
cmake -S . -B build-pico -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico
cmake -S . -B build-pico2 -G "Ninja" -DCMAKE_BUILD_TYPE=Release -DPICO_BOARD=pico2
cmake --build build-pico --config Release
cmake --build build-pico2 --config Release
echo "------------------------------------------------------"
picotool info -a build-pico/pico-jxgLABO.elf
copy build-pico/pico-jxgLABO.uf2 release/pico-jxgLABO.uf2
echo "------------------------------------------------------"
picotool info -a build-pico2/pico-jxgLABO.elf
copy build-pico2/pico-jxgLABO.uf2 release/pico2-jxgLABO.uf2
echo ""
echo "created: release/pico-jxgLABO.uf2 release/pico2-jxgLABO.uf2"

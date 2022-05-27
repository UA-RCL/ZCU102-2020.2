quick instructions:

1. Build the MMULT IP by running `generate_hls_ip.sh` in `vitis_hls`
2. Generate the Vivado project by running `generate_vivado_prj.sh` in `vivado`
3. Make changes as necessary, export your hardware file
4. Update the hardware configuration for petalinux with `petalinux-config --get-hw-description=../vivado/your_new_hw.xsa`
5. Run petalinux-build

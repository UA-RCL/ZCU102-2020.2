quick instructions:

1. Build the all HLS IPs by running `build_IPs.sh` in `vitis_hls` and following the prompts (Yes to all to extract exported files directly)
2. Generate the Vivado project by running `generate_vivado_prj.sh` in `vivado`
3. Make changes as necessary, export your hardware file
4. Update the hardware configuration for petalinux with `petalinux-config --get-hw-description=../vivado/your_new_hw.xsa`
5. Run petalinux-build

# Instructions

## HLS Files

Build the all HLS IPs by running `build_IPs.sh` in `vitis_hls` and following the prompts (Yes to all to extract exported files directly)

## VIVADO Project

1. Generate the Vivado project by running `generate_vivado_prj.sh` in `vivado`
2. Make changes as necessary, export your hardware file.

### Address Map

| Accelerator | Interface | Address |
|:---:|:---:|:---:|
| Conv2D       | axi_config  | 0xA000_000 |
| Conv2D_dma   | AXI_LITE    | 0xA001_000 |
| fft_0_dma    | AXI_LITE    | 0xA002_000 |
| fft_0        | config_gpio | 0xA003_000 |
| fft_0        | reset_gpio  | 0xA004_000 |
| fft_1_dma    | AXI_LITE    | 0xA005_000 |
| fft_1        | config_gpio | 0xA006_000 |
| fft_1        | reset_gpio  | 0xA007_000 |
| mmult_0_dma  | AXI_LITE    | 0xA008_000 |
| mmult_1_dma  | AXI_LITE    | 0xA009_000 |
| ZIP_0        | axi_control | 0xA00B_000 |
| ZIP_0_dma    | AXI_LITE    | 0xA00C_000 |

## Petalinux

1. Update the hardware configuration for petalinux with `petalinux-config --get-hw-description=../vivado/your_new_hw.xsa`
2. Update Ethernet MAC address as needed from [config](https://github.com/UA-RCL/ZCU102-2020.2/blob/2ffts_2mmults_1conv2d_1zip/petalinux/project-spec/configs/config#L91)
3. Run `petalinux-build`
4. Run `petalinux-package --boot --fsbl --u-boot --pmufw --fpga` use `--force` to overwrite files that already exists
5. Copy `boot.scr`, `BOOT.BIN`, and `image.ub` under `petalinux/images/linux` to the `BOOT` partition of the SD card.
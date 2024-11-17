
# Custom ROM for Tecno Pova LD7J

## Getting Started

To build a custom ROM for the tecno pova LD7, you need to be familiar with [Android Source Control Tools](https://source.android.com/setup/develop). Follow these steps to set up your environment and build your ROM.

### Initialize Local Repository

Use the following command to initialize your local repository with the custom ROM trees:

```bash
repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
```

### Sync the Repository

Once initialized, sync the repository:

```bash
repo sync --force-sync -j$(nproc)
```

### Clone Device-Specific Trees

Clone the necessary repositories for the Samsung Galaxy A12:

- **Device Tree**:  
   ```bash
   git clone https://github.com/unasir008/android_device_tecno_LD7.git device/tecno/LD7
   ```

- **Vendor Tree**:  
   ```bash
   git clone https://github.com/unasir008/galaxy-a125f-vendor-tree.git vendor/tecno/LD7
   ```

- **Kernel Tree**:  
   ```bash
   not found anything
   ```

Ensure the directory structure looks like this:
```
device/tecno/LD7/
vendor/tecno/LD7/
kernel/tecno/LD7/
```

## Building the ROM

1. **Set up the build environment**:  
   ```bash
   source build/envsetup.sh
   ```

2. **Choose the build target**:  
   ```bash
   lunch lineage_LD7-userdebug
   ```

3. **Start the build**:  
   ```bash
   mka bacon
   ```

The final ROM file will be located in:  
```bash
`out/target/product/a12/lineage-21.0-<date>-UNOFFICIAL-LD7.zip`
---

### Helpful Resources

- **LineageOS Wiki**: [Official Documentation](https://wiki.lineageos.org/)
- **Android Source Documentation**: [Source.android.com](https://source.android.com/setup/start)
- **GitHub**: [Nasir’s Development Repositories](https://github.com/unasir008)

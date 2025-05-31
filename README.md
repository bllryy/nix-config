# NixOS Configuration - Quick Reference

## Daily Commands

### Apply Changes
```bash
cd /etc/nixos
sudo nixos-rebuild switch --flake .#nix-uwu
```

### Test Before Applying
```bash
cd /etc/nixos
sudo nixos-rebuild dry-build --flake .#nix-uwu
```

### Rollback if Broken
```bash
sudo nixos-rebuild switch --rollback
```

## Common Tasks

### Add a Package
1. Find the right module in `modules/` folder
2. Add package name to the list
3. Run: `sudo nixos-rebuild switch --flake .#nix-uwu`

### Enable/Disable Features
Edit `hosts/nix-uwu/default.nix`:
```nix
modules = {
  desktop.enable = true;     # Change to false to disable
  development.enable = true; # Change to false to disable  
  gaming.enable = true;      # Change to false to disable
};
```

### Update System
```bash
cd /etc/nixos
sudo nix flake update
sudo nixos-rebuild switch --flake .#nix-uwu
```

## File Locations

- **Main config**: `hosts/nix-uwu/default.nix`
- **Hardware**: `hosts/nix-uwu/hardware.nix` 
- **Packages by category**: `modules/*/` folders
- **User settings**: `home/default.nix`

## Emergency

### If System Won't Boot
1. Boot from older generation in GRUB menu
2. Or run: `sudo nixos-rebuild switch --rollback`

### Reset to Backup
```bash
sudo cp /etc/nixos/configuration.nix.backup /etc/nixos/configuration.nix
sudo nixos-rebuild switch
```

## Remember
- Always run from `/etc/nixos/` directory
- Test with `dry-build` before `switch`
- Reboot after major changes

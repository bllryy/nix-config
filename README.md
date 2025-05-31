# nix-config
# nix-config
```
# File structure inspired by modern NixOS configurations
.
├── flake.nix                 # Main flake file
├── flake.lock               # Auto-generated lock file
├── hosts/                   # Host-specific configurations
│   ├── nix-uwu/
│   │   ├── default.nix      # Host configuration
│   │   └── hardware.nix     # Hardware-specific settings
│   └── common.nix           # Shared host settings
├── modules/                 # System modules
│   ├── boot/
│   │   └── default.nix
│   ├── networking/
│   │   └── default.nix
│   ├── desktop/
│   │   ├── default.nix
│   │   ├── gnome.nix
│   │   └── audio.nix
│   ├── development/
│   │   ├── default.nix
│   │   ├── languages.nix
│   │   └── tools.nix
│   ├── gaming/
│   │   └── default.nix
│   └── users/
│       └── default.nix
├── pkgs/                    # Custom packages
└── README.md
```

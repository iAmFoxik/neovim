## How to use

You can use this flake as an input:

```nix
{
    nixvim = {
        url = "github:iAmFoxik/neovim/nixvim";
        inputs.nixpkgs.follows = "nixpkgs";
    };
}
```

You can then install the package either normally or through home-manager.

#### Normal:

```nix
environment.systemPackages = [
    inputs.nixvim.packages.x86_64-linux.default
];
```

#### Home-Manager

```nix
home-manager.users.<user>.home.packages = [
    inputs.nixvim.packages.x86_64-linux.default
];
```

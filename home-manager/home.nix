# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ inputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default
      (final: prev: {
      	fcitx-engines = final.fcitx5;
      })

      # Or define it inline, for example:
      # (final: prev: { hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
    };
  };

  # TODO: Set your username
  home = {
    username = "louhmmsb";
    homeDirectory = "/home/louhmmsb";
  };

  # Configuring emacs 
  programs.emacs = {
    enable = true;
    package = pkgs.emacs29.overrideAttrs (old : {
      configureFlags = old.configureFlags ++ [ "--with-json"]; 
    });
  };
  

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [ 
    firefox
    git
    zsh
    neovim
    xclip
    starship
    kitty
    exa
    bat
    neofetch
    discord
    spotify
    tdesktop
    flameshot
    playerctl
  ];

  home.file = {
  #  ".zshrc".source = ../Configs/ZSH/.zshrcTWM;
  ".Xresources".source = ../Configs/XRESOURCES/Catppuccin;
  ".local/share/fonts".source = ../Configs/.fonts;
  };

  xdg.configFile = {
    "kitty".source = ../Configs/KITTY;
    "i3".source = ../Configs/I3;
    "picom/picom.conf".text = lib.mkForce (builtins.readFile ../Configs/PICOM/picom.conf);
    "rofi".source = ../Configs/ROFI;
    "polybar".source = ../Configs/POLYBAR;
    "starship.toml".source = ../Configs/STARSHIP/starship.toml;
    "nvim".source = ../Configs/NVIM;
  };
  programs.zsh = {
    enable = true;
    oh-my-zsh = { 
      enable = true;
      plugins = [ "git" ];
    };
    enableSyntaxHighlighting = true;
    initExtra = builtins.readFile ../Configs/ZSH/.zshrcnix;
  };



  # systemd.user.services.picom.serviceConfig.ExecStart = ''
  # ${pkgs.picom}/bin/picom --experimental-backends --no-fading-openclose 
  #  --fade-in-step=1 --fade-out-step=1 --fade-delta=0 --config /home/louhmmsb/.config/picom/picom.conf
  #'';
  services.picom = {
    enable = true;
    # settings = lib.mkForce (builtins.readFile ../Configs/PICOM/picom.conf);
  };

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "22.11";
}

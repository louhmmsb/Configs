{ pkgs, ... }:

{

  home.packages = with pkgs; [
    bat
    neofetch
    ripgrep
    starship
    fd
  ];
  
  programs = {
    zsh = {
      enable = true;
      oh-my-zsh = { 
        enable = true;
        plugins = [ "git" ];
      };
      syntaxHighlighting.enable = true;
      initExtra = builtins.readFile ../Configs/ZSH/.zshrc;
      enableCompletion = true;
      autosuggestion.enable = true;
    };
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    eza = {
      enable = true;
    };
  };
  
}

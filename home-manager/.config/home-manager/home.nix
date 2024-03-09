{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "amon";
  home.homeDirectory = "/home/amon";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/amon/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs = {
    git = {
      enable = true;
      userName = "Locbac";
      userEmail = "martinhost003@gmail.com";
      };
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      shellAliases = 
      {
        ## LISTING
        ll="ls -alF";
        la="ls -A";
        l="ls -CF";
        ## NALA
        ni="sudo nala install";
        nr="sudo nala remove";
        na="sudo nala update";
        nu="sudo nala upgrade";
        nf="sudo nala fetch";
        nrr="sudo nala clean && sudo nala autoremove && sudo nala autopurge";
        ## PACMAN
        pci="sudo pacman -Sy";
        pcr="sudo pacman -R";
        ## MAKE
        smci="sudo make clean install";
        smi="sudo make install";
        ## GIT
        gpf="git add . && git commit -m 'push' && git push";
        gc="git clone";
        ## SHUTDOWN REBOOT
        ssn="sudo shutdown now";
        sr="sudo reboot";
        ## SCRIPTS
        tg="~/clones/grayscale-desktop/toggle-monitor-grayscale.sh";
        ## MISC
        sme="sudo chmod +x";
        rmallgitdir="rm -rf .git*";
        sn="EDITOR=nvim sudoedit";
        ## VMs
        looking-glass="looking-glass-client -m 97 -c DXGI";
        ## RUNNERS
        neo="neofetch";
        r="ranger";
        sur="sudo ranger";
        fr="flatpak run";
        ## NIXOS
        enc="EDITOR=nvim sudoedit /etc/nixos/configuration.nix";
        snor="sudo nixos-rebuild switch";
        snorf="sudo nixos-rebuild switch --flake /etc/nixos#default";
        hms="home-manager switch";
        hmsf="home-manager switch --flake ~/.config/home-manager/#amon";
        cnix="cd /etc/nixos/";
        ng="sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
        nixclean="sudo nix-env --list-generations --profile /nix/var/nix/profiles/system && sudo nix-collect-garbage --delete-older-than 7d && sudo nixos-rebuild switch";
      };
      initExtraFirst = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      #POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
      '';
      initExtra = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      '';
      oh-my-zsh = {
        enable = true;
        plugins = [ 
        "git" 
        ];
        #theme = "powerlevel9k";
      };
    };
  };

  gtk = {
      enable = true;
      cursorTheme = {
        package = pkgs.apple-cursor;
        name = "macOS-Monterey";
        };
      iconTheme = {
        package = pkgs.whitesur-icon-theme;
        name = "WhiteSur-dark";
        };
      theme = {
        package = pkgs.whitesur-gtk-theme;
        name = "WhiteSur-Dark";
        };
    };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}

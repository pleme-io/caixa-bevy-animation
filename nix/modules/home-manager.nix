# nix/modules/home-manager.nix — auto-generated from bevy_animation.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_animation; in {
  options.programs.bevy_animation = {
    enable = lib.mkEnableOption "bevy_animation";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_animation or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

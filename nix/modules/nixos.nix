# nix/modules/nixos.nix — auto-generated from bevy_animation.caixa.lisp
# description: "Provides animation functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_animation;
in {
  options.services.bevy_animation = {
    enable = lib.mkEnableOption "bevy_animation";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_animation or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

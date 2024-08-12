{ config, pkgs, ... }:
let 
 hiddify-next = pkgs.callPackage ./hiddify-next.nix {};
in
{
  environment.systemPackages = [ hiddify-next ];
}

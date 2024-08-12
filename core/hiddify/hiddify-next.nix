{ appimageTools, fetchurl }:
let
  version = "2.1.5";
  pname = "hiddify-next";
  name = "hiddify";

  src = fetchurl {
    url = "https://github.com/hiddify/${pname}/releases/download/v${version}/Hiddify-Linux-x64.AppImage";
    hash = "sha256-7gMWqdGwnH1VtJBG6m4VQbZVRNZY8f0BM+hEBNwAa1Q=";
  };
  appimageContents = appimageTools.extract {
    inherit pname version src;
  };
in appimageTools.wrapType2 {
  inherit pname version src;

  extraPkgs = pkgs: [ pkgs.libepoxy ];

  extraInstallCommands = ''
    install -m 444 -D ${appimageContents}/${name}.desktop $out/share/applications/${name}.desktop
    install -m 444 -D ${appimageContents}/usr/share/icons/hicolor/256x256/apps/${name}.png \
      $out/share/icons/hicolor/256x256/apps/${name}.png
      substituteInPlace $out/share/applications/${name}.desktop \
      --replace-quiet 'Exec=LD_LIBRARY_PATH=usr/lib hiddify' 'Exec=${pname}'
  '';

  meta = {
    description = "VPN Client";
    homepage = "https://github.com/hiddify/hiddify-next";
    platforms = [ "x86_64-linux" ];
  };
} 

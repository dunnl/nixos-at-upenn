{ pkgs ? import <nixpkgs> {} }:
let
  openssl = pkgs.openssl;
  python-with-my-packages = pkgs.python3.withPackages (p: with p; [
    dbus-python
  ]);
in
(pkgs.buildFHSUserEnv {
  name = "join-now-env";
  targetPkgs = pkgs: [
    pkgs.coreutils
    openssl
    python-with-my-packages
  ];
  #shellHook = ''
  #  PYTHONPATH=${python-with-my-packages}/${python-with-my-packages.sitePackages}
  #'';
  runScript = "bash";
}).env

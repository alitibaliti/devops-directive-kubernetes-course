{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.git
    pkgs.civo
    pkgs.envsubst
    pkgs.gh
    pkgs.go
    pkgs.go-task
    pkgs.google-cloud-sdk
    pkgs.gum
    pkgs.jq
    pkgs.k9s
    pkgs.kind
    pkgs.kluctl
    pkgs.ko
    pkgs.kubectl
    pkgs.kubectx
    pkgs.kubernetes-helm
    pkgs.kustomize
    pkgs.oras
    pkgs.nodejs_20
    pkgs.poetry
    pkgs.python312
    pkgs.tilt
    pkgs.yq-go
    pkgs.act
    pkgs.kubent

  ];

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/processes/
  # processes.cargo-watch.exec = "cargo-watch";

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/
  scripts.hello.exec = ''
    echo hello from $GREET
  '';

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}

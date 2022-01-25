{
  description = "Evaluation scripts for the BERBL implementation paper";

  # 2022-01-24
  inputs.nixpkgs.url =
    "github:NixOS/nixpkgs/8ca77a63599ed951d6a2d244c1d62092776a3fe1";
  # inputs.berbl-eval.url = "TODO"
  inputs.berbl-eval = {
    type = "path";
    path = "/home/david/Projekte/berbl/berbl-eval";
  };

  outputs = { self, nixpkgs, berbl-eval }:

    let system = "x86_64-linux";
    in with import nixpkgs { inherit system; };

    let python = python39;
    in rec {

      devShell."${system}" = mkShell {
        packages = [
          (python.withPackages
            (ps: [ berbl-eval.defaultPackage."${system}" ps.networkx ]))
        ];
      };
    };
}

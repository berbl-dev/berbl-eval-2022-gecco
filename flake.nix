{
  description = "Evaluation scripts for the paper BERBL implementation paper";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
  # inputs.berbl-eval.url = "TODO"
  inputs.berbl-eval = {
    type = "path";
    path = "/home/david/Projekte/berbl-experiments/berbl-eval";
  };

  outputs = { self, nixpkgs, berbl-eval }: {

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      mkShell {
        packages = [
          (python3.withPackages
            (ps: [ berbl-eval.defaultPackage.x86_64-linux ps.networkx ]))
        ];
      };
  };
}

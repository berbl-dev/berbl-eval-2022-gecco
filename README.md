# Evaluation scripts for the paper _BERBL: An implementation of a fully Bayesian Learning Classifier System_


1. Install the [Nix package manager](https://nixos.org/download.html).
2. Enable flakes support: Add the following line to `~/.config/nix/nix.conf`:
   ```
   experimental-features = nix-command flakes
   ```
3. Run
   ```bash
   nix develop
   ```
   This drops you into a shell that has all the necessary dependencies installed
   (be patient, this may take some time when run for the first time).
4. In the development shell, run
   1. `python eval-ps.py path/to/data/mlruns` to evaluate the XCSF paramater
      search data found at `path/to/data/mlruns`.
   2. `python eval.py path/to/data/mlruns` to evaluate the experiment data at
      `path/to/data/mlruns` (i.e. comparison of BERBL with XCSF etc.).
5. Some evaluation data is printed to `stdout`, some is stored in `eval`.

# Analysis of the runs conducted for the 2022 GECCO paper


**This repository has been archived in June 2022** since it only serves as a
collection of evaluation scripts used in the 2022 GECCO paper, *The Bayesian
Learning Classifier System: Implementation, Replicability, Comparison with XCSF*
by Pätzel and Hähner.


Note that this repository's evaluation scripts, `eval.py` and `eval-ps.py`, have
been copied to the [berbl-eval
repository](https://github.com/berbl-dev/berbl-eval) where they will receive at
least somewhat minimal maintenance alongside evaluation scripts of other
publications regarding BERBL.


## How to run the evaluation scripts


This assumes that the corresponding experiments have been run and their results
stored in `path/to/results/mlruns`. See the [the berbl-exp-2022-gecco
repository](https://github.com/berbl-dev/berbl-exp-2022-gecco).


1. Install
   [Nix](https://nixos.org/manual/nix/stable/installation/installing-binary.html)
   [including flakes support](https://nixos.wiki/wiki/Flakes) in order to be
   able to run `nix develop` later.  Note that [Nix does not yet support
   Windows](https://nixos.org/manual/nix/stable/installation/supported-platforms.html).
2. Clone the repository (`git clone …`). Run the next steps from within the
   cloned repository.
3. Enter a shell that contains all dependencies by running
   ```bash
   nix develop
   ```
   (may take some time to complete).
4. Run the evaluation, pointing it to the `mlruns` directory containing the
   experiment results.
   ```bash
   python eval.py path/to/results/mlruns
   ```
5. Run the evaluation of the parameter study, pointing it to the `mlruns-ps`
   directory containing the experiment results.
   ```bash
   python eval.py path/to/results/mlruns-ps
   ```


Note: Some evaluation data is printed to `stdout`, some is stored in `eval`.


<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- End: -->

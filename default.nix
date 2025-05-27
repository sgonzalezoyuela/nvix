{ inputs, self, ... }:
{
  perSystem =
    { pkgs, system, ... }:
    let
      inherit (inputs) nixvim;
      extraSpecialArgs = {
        inherit inputs self; # This will ensure all inputs are available in the module
      };

      nvix = type: {
        inherit pkgs extraSpecialArgs;
        module = import ./config/${type}.nix;
      };
      check =
        attr: description:
        let
          output = nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule attr;
        in
        output
        // {
          meta = output.meta // {
            inherit description;
          };
        };
      package =
        attr: description:
        let
          output = nixvim.legacyPackages.${system}.makeNixvimWithModule attr;
        in
        output
        // {
          meta = output.meta // {
            inherit description;
          };
        };
    in
    {
      # Run `nix flake check .` to verify that your config is not broken
      checks = rec {
        default = check (nvix "core") "Checks if core builds fine.";
        core = default;
        bare = check (nvix "bare") "Checks if bare builds fine";
        full = check (nvix "full") "Checks if full builds fine";
        rust = check (nvix "rust") "Checks if rust builds fine";
        java = check (nvix "java") "Checks if java builds fine";
        webdev = check (nvix "webdev") "Checks if webdev builds fine";
        python = check (nvix "python") "Checks if python builds fine";
        haskell = check (nvix "haskell") "Checks if haskell builds fine";
      };
      # Lets you run `nix run .` to start nixvim
      packages = rec {
        default = package (nvix "core") "Balanced for regular usage";
        core = default;
        bare = package (nvix "bare") "Minimal utility set (Good for servers to quick spin)";
        full = package (nvix "full") "Full utility set (Full Set contains tex utilities)";
        rust = package (nvix "rust") "Rust utility set (Full Set contains tex utilities)";
        java = package (nvix "java") "Java utility set (Full Set contains tex utilities)";
        webdev = package (nvix "webdev") "WebDev utility set (Full Set contains tex utilities)";
        python = package (nvix "python") "Python utility set (Full Set contains tex utilities)";
        haskell = package (nvix "haskell") "Haskell utility set (Full Set contains tex utilities)";
      };
      formatter = pkgs.nixpkgs-fmt;
    };
}

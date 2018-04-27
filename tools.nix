let pkgs = import <nixpkgs> { };
in pkgs.buildEnv {
     name = "my-toolchain";
     paths = with pkgs; [
       (haskell.packages.ghc822.ghcWithPackages (p: with p; [
         base
         binary-orphans
         ]))
      ];
   }

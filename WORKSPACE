workspace(name = "haddock_extra_pkgs_demo")

# Pinned Git commits for HTTP archives.
rules_haskell_rev="d9ea44e6c9391e6b96d87319db6fea1ea1be9029"
rules_nixpkgs_rev="2a0547ac6d5645cb17b71c6f1f8c6febd3544027"

http_archive(
    name = "io_tweag_rules_haskell",
    strip_prefix = "rules_haskell-{}".format(rules_haskell_rev),
    urls = ["https://github.com/tweag/rules_haskell/archive/{}.tar.gz".format(rules_haskell_rev)],
)

load("@io_tweag_rules_haskell//haskell:repositories.bzl", "haskell_repositories")
haskell_repositories()

http_archive(
    name = "io_tweag_rules_nixpkgs",
    strip_prefix = "rules_nixpkgs-{}".format(rules_nixpkgs_rev),
    urls = ["https://github.com/tweag/rules_nixpkgs/archive/{}.tar.gz".format(rules_nixpkgs_rev)],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl",
     "nixpkgs_git_repository",
     "nixpkgs_package")

nixpkgs_git_repository(
  name = "nixpkgs",
  revision = "6c064e6b1f34a8416f990db0cc617a7195f71588",
)

nixpkgs_package(
  name = "ghc",
  repository = "@nixpkgs",
  nix_file = "//:tools.nix",
)

register_toolchains("//:ghc")

package(default_visibility = ["//visibility:public"])

load("@io_tweag_rules_haskell//haskell:haskell.bzl",
     "haskell_toolchain",
     "haskell_library",
     "haskell_doc",
)

haskell_toolchain(
  name = "ghc",
  version = "8.2.2",
  tools = "@ghc//:bin",
)

haskell_library(
  name = "mylib",
  # src_strip_prefix = "src",
  srcs = ["Foo.hs"],
  prebuilt_dependencies = ["base", "binary-orphans"]
)

haskell_doc(
  name = "mylib-doc",
  deps = [":mylib"],
)

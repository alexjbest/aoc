import Lake

open Lake DSL

package aoc

@[default_target]
lean_lib AOC

require Mathlib from git "https://github.com/leanprover-community/mathlib4" @ "master"

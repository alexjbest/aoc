import Lake

open Lake DSL

package aoc

@[default_target]
lean_lib AOC
@[default_target]
lean_exe AOC1 where
  root := `AOC.AOC1
@[default_target]
lean_exe AOC1_2 where
  root := `AOC.AOC1_2

require Mathlib from git "https://github.com/leanprover-community/mathlib4" @ "master"

import Lean.Data.Parsec
-- import Lean.Data.String.Basic

open System
open IO
open FS

def main : IO Unit := do
  let s ← getStdin
  let mut m := 0
  let mut co := 0
  while true do
    let l ← s.getLine
    if l == "\n" then
      co := 0
      continue
    if l == "" then break
    co := co + (l.dropRight 1).toNat!
    if co ≥ m then m := co

  println s!"{m}"
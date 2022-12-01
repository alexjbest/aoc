open System
open IO
open FS

def main : IO Unit := do
  let s ← getStdin
  let mut m := 0
  let mut m2 := 0
  let mut m3 := 0
  let mut co := 0
  while true do
    let l ← s.getLine
    if l == "\n" ∨ l == "" then
      if co ≥ m then
        m3 := m2
        m2 := m
        m := co
      else if co ≥ m2 then
          m3 := m2
          m2 := co
        else if co ≥ m3 then
          m3 := co
      co := 0
      if l == "" then break
      continue
    co := co + (l.dropRight 1).toNat!

  println s!"{m + m2 + m3}"
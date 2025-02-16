proc correctProc {a b} {
  if {[expr {$a == $b}]} {
    return 1
  } else {
    return 0
  }
}

puts [correctProc 1 1]
puts [correctProc 1.0 1]
puts [correctProc 1 "1"]
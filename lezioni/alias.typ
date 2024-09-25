// Lezione 01

#let float(x) = {
  let fop = math.class(
    "unary",
    $"float"$,
  )
  $fop(#x)$
}

#let eps = "eps"

// Lezione 03

#let compl(x) = {
  let compop = math.class(
    "unary",
    $"compl"$,
  )
  $compop(#x)$
}

#let rank(x) = {
  let rankop = math.class(
    "unary",
    $"rk"$,
  )
  $rankop(#x)$
}

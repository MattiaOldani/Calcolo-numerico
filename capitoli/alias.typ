// Alias

// Aritmetica floating point

#let float(x) = {
  let fop = math.class(
    "unary",
    $"float"$,
  )
  $fop(#x)$
}

#let eps = "eps"

// Matrici e vettori

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

// Sistemi lineari

#let trace(x) = {
  let traceop = math.class(
    "unary",
    $"tr"$,
  )
  $traceop(#x)$
}

#let toll = "toll"

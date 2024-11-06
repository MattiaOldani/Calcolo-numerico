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

fun oddeven [] = 0
  | oddeven (z::zs) =
    let fun go [] _ current longest = Int.max (current, longest)
          | go (y::xs) x current longest =
            if (y mod 2) <> (x mod 2)
            then go xs y (current+1) longest
            else go xs y 1 (Int.max (current, longest))
    in go zs z 1 0
    end


fun oddeven ls = 
        let fun oddeven' [] n bit = n
          | oddeven' (h::t) n bit = if (h mod 2 = 0 and bit = 1) then oddeven' t n+1 0
                                    else if (h mod 2 = 0 and bit = 0) then Int.max(n, oddeven' t 0 0)
                                    else if (h mod 2 = 1 and bit = 1) then Int.max(n, oddeven' t 0 1)
                                    else oddeven' t n+1 1
        in Int.max(oddeven' ls 0 0, oddeven' ls 0 1)
        end

                                      
                                        

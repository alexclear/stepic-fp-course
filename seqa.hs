seqA n | n >= 0 = let helper to ak2 ak1 ak n | to == 0 = 1
                                             | to == 1 = 2
                                             | to == 2 = 3
                                             | n == to = ak2 + ak1 - (2 * ak)
                                             | n == 0 = helper to 0 0 0 1
                                             | n == 1 = helper to 0 0 0 2
                                             | n == 2 = helper to 3 2 1 3
                                             | n < to = helper to (ak2 + ak1 - (2 * ak)) ak2 ak1 (n + 1)
                in helper n 0 0 0 0

class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab = \a -> if doesEnrageMork a then if doesEnrageGork a then stomp $ stab a else stomp a else if doesEnrageGork a then stab a else a

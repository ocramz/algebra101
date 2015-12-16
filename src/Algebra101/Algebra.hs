{-# LANGUAGE ConstraintKinds #-}
module Algebra101.Algebra where

-- | POSet : "meet" semilattice

class Eq a => POrd_ a where
  inf :: a -> a -> a

  (<=) :: a -> a -> Bool
  x <= y = inf x y == x

  (<) :: a -> a -> Bool
  x < y = inf x y == x && x /= y


type POrd a = (Eq a, POrd_ a)



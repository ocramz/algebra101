{-# LANGUAGE ConstraintKinds, TypeFamilies #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  Algebra101.Algebra
-- Copyright   :  (c) Marco Zocca 2015
-- License     :  BSD3
-- Maintainer  :  zocca . marco . gmail . com
-- Stability   :  experimental
--
-- | Some experiments with algebraic type classes, inspired by SubHask
--
-----------------------------------------------------------------------------
module Algebra101.Algebra where

import qualified Prelude as P
import GHC.Types


-- | relational classes

-- Eq
-- POrd
-- MinBound
-- Lattice
-- Graded
-- Enum
-- Ord
-- Bounded
-- Complemented
-- Heyting

-- | numeric classes

-- Semigroup
-- SemigroupAction
-- Monoid
-- Cancellative
-- Group
-- Rg
-- Rig
-- Ring
-- Integral
-- Field
-- OrdField
-- BoundedField
-- RationalField
-- QuotientField
-- ExpRing
-- ExpField
-- Real

-- Normed
-- Cone
-- Module
-- FreeModule
-- FiniteModule
-- VectorSpace
-- Riesz
-- Banach
-- Hilbert
-- Bregman (?) -- needs tangent operator
-- Metric

-- TensorAlgebra


-- | set-like classes

-- Constructible
-- Foldable
-- Topology (?)
-- IxContainer
-- Sliceable





-- | Partially ordered sets
-- -- properties :
-- commutative
-- associative
-- idempotent

-- "meet" semilattice : every pair of elements possesses an infimum, e.g. a greatest lower bound

-- class Eq a => POrd_ a where
--   inf :: a -> a -> a

--   (<=) :: a -> a -> Bool
--   x <= y = inf x y == x

--   (<) :: a -> a -> Bool
--   x < y = inf x y == x && x /= y


-- type POrd a = (Eq a, POrd_ a)


-- lawPOrdCommutative :: POrd a => a -> a -> Bool
-- lawPOrdCommutative x y = inf x y == inf y x

-- lawPOrdAssociative :: POrd a => a -> a -> a -> Bool
-- lawPOrdAssociative x y z = inf (inf x y) z == inf x (inf y z)

-- lawPOrdIdempotent :: POrd a => a -> Bool
-- lawPOrdIdempotent x = inf x x == x


-- -- | Lower-bounded semilattices

-- class POrd a => MinBound_ a where
--   minBound :: a

-- type MinBound a = (MinBound_ a, Eq a)

-- lawMinBoundInf x = inf x minBound == minBound



module Lab1 where

import Prelude hiding (flip)

import Data.List (List(..))
import Effect (Effect)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton a = (Cons a Nil)

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc Nil b = (Cons b Nil)
snoc (Cons a xs) b = (Cons a(snoc xs b))

lenght :: forall a. List a -> Int
lenght Nil = 0
lenght(Cons _ a) = 1 + lenght a

test :: Effect Unit
test = do

-- singleton
  log $ show $ singleton (10)

  -- null
  log $ show $ null $ Nil 
  log $ show $ null $ Cons "el" Nil

  -- snoc
  log $ show $ snoc Nil "element"

  -- lenght
  log $ show $ lenght Nil
  log $ show $ lenght (Cons "el" Nil)
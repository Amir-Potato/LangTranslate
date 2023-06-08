import Data.Map
pmap = Prelude.map

list = [2,7,11,15]
target = 9

twoSum :: Int->[Int]->[(Int, Int)]
twoSum n x = [(i, j) | let indexed = zip x [0..],
                       let indexedmap = fromList indexed,
                       (m,i) <- indexed,
                       member (n - m) indexedmap,
                       let j = indexedmap ! (n - m),
                       i < j]

answer = twoSum target list
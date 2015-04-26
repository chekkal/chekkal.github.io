import Data.List (sortBy)

data Point a = Point a a deriving Show
data Direction = DLeft|DRight|DLine deriving Show

xproduct  (Point x2 y2) (Point x1 y1) (Point x3 y3) = (x1-x2)*(y1-y3) - (x1-x3)*(y1-y2) 
direction p1 p2 p3 = let r = xproduct p1 p2 p3 in if r == 0 then DLine else if r > 0 then DRight else DLeft
--directions (a:b:c:xs)=((a,b,c),direction a b c):directions (b:c:xs);directions _ = []

grahamScan [] = []
grahamScan points = scan [p_y_low] points_sorted_by_polar
    where
    points_sorted_by_y = sortBy (\(Point _ y1) (Point _ y2) -> compare y1 y2) points
    p_y_low = head $ points_sorted_by_y
    polar (Point x1 y1) (Point x2 y2) = atan2 (y2 - y1) (x2 -x1) 
    points_sorted_by_polar = sortBy (\p1 p2 -> compare (polar p_y_low p1) (polar p_y_low p2)) (tail points_sorted_by_y)
    scan [] ys = ys
    scan (x:xs) (y:z:rs) = case direction x y z of
        DLine -> scan (x:xs) (z:rs)
        DLeft -> scan (y:x:xs) (z:rs)
        DRight -> scan xs (x:z:rs)
    scan xs [z] = z:xs



test = map grahamScan [
  [Point 50 60, Point 60 20, Point 70 45, Point 100 70, Point 125 90, Point 200 113, Point 250 140, Point 180 170, Point 105 140, Point 79 140, Point 60 85, Point 50 60], 
  [Point 30 30, Point 50 60, Point 60 20, Point 70 45, Point 86 39, Point 112 60, Point 200 113, Point 250 50, Point 300 200, Point 130 240, Point 76 150, Point 47 76, Point 36 40, Point 33 35, Point 30 30]]



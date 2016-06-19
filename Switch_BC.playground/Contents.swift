let point = (x:1 , y:4)

switch point {
case let q1 where (point.x>0) && (point.y>0):
    print("\(q1) is in the first quadrant")
case let q2 where (point.x<0) && (point.y>0):
    print("\(q2) is in the Second quadrant")
case let q3 where (point.x<0) && (point.y<0):
    print("\(q3) is in the Third quadrant")
case let q4 where (point.x>0) && (point.y<0):
    print("\(q4) is in the Fourth quadrant")
case let q1 where (point.x>0) && (point.y>0):
    print("\(q1) is in the first quadrant")

case (_,0):
    print("The point is X-axis")

case (0,_):
    print("The point is Y-axis")

default:
    print("your point is Origin")

}

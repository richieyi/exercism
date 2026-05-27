def is_triangle(sides):
    a, b, c = sides
    all_sides_greater_than_zero = a > 0 and b > 0 and c > 0
    all_two_sides_greater_than_third = a + b >= c and b + c >= a and a + c >= b
    
    return all_sides_greater_than_zero and all_two_sides_greater_than_third

def equilateral(sides):
    a, b, c = sides
    
    return is_triangle(sides) and (a == b == c)
    
def isosceles(sides):
    a, b, c = sides
    
    return is_triangle(sides) and (a == b or a == c or b == c)

def scalene(sides):
    a, b, c, = sides
    
    return is_triangle(sides) and (a != b and a != c and b != c)
        
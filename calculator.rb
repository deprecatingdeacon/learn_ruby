#write your code here
def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(a)
  a.inject(0) { |sum, x| sum + x }
end

def multiply(x, y, *o)
  x * y * o.inject(1) { |sum, z| sum * z }
end

def power(x, y)
  x ** y
end

def factorial(x)
  (1..x).reduce(1, :*)
end

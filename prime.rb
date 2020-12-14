# Add  code here!
def prime?(n, k = 30)
  #return false if n < 2
  return true if n == 2

  d = n - 1
  r = 0
  while d & 1 == 0 do
    d = d / 2
    r += 1
  end

  k.times do
    a = 2 + rand(n - 4)
    x = mod_exp(a, d, n)
    next if x == 1 || x == (n - 1)

    (r - 1).times do
      x = mod_exp(x, 2, n)
      return false if x == 1
      break if x == (n - 1)
    end
    return false if x != (n - 1)
  end

  true
end

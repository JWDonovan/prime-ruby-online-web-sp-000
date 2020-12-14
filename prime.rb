# Add  code here!
def prime?(int, count = 7)
  if count == 0
    return true
  else
    if fermatTest(int)
      return prime?(int, count -= 1)
    end
  end

  return false
end

def fermatTest(int)
  def pick(d, n)
    return d == exp_mod(d, n, n)
  end

  return pick(1 + rand(int), int)
end

def exp_mod(base, exp, modulo)
  if exp == 0
    return 1
  elsif exp.even?
    return modularSquare(exp_mod(base, exp / 2, modulo), modulo)
  else
    return (base * (exp_mod(base, (exp - 1), modulo))) % modulo
  end
end

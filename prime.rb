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

  return pick(Random.rand(11), int)
end

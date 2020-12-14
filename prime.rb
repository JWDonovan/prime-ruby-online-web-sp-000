# Add  code here!
def prime?(int, k = 7)
  if int <= 1 || int == 4
    return false
  end

  if int <= 3
    return true
  end

  k.times do
    a = 2 + rand() % (int - 4)

    if power(a, int - 1, int)
      return false
    end
  end
end
# Add  code here!
# def get_coprime(n):
#     while True:
#         coprime = random.randrange(n)
#         if math.gcd(coprime, n) == 1:
#             return coprime
#
#
# def fermat_primality(n, count = 1):
#     for _ in range(count):
#         a = get_coprime(n)
#         if (a ** (n-1)) % n != 1:
#             return False
#     return True

def prime?(n, count = 1)
  count.times do
    a = get_coprime(n)
    if (a ** (n - 1)) % n != 1
      return false
    end
  end

  true
end

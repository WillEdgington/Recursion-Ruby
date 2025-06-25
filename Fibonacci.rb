
MOD=10**9 + 7 # mod for large test cases

# Non recursive fibonacci sequence method (could think of it as 1d DP)
def fibs(n)
  n=n-1
  arr=[0,1,1] # first three values of fib X0 = 0, X1 = 1, X2 = 1
  return arr[0,n] if n<=2 # return slice of initial values

  (3..n).each do
    arr.push((arr[-1]+arr[-2]) % MOD) # Xn = Xn-1 + Xn-2
  end
  arr
end

# Recursive fibonacci sequence method
def fibs_rec(n)
  return [0] if n==1 # X0 = 0
  return fibs_rec(n-1) << 1 if n<=3 # push 1 to n-1 solution

  prev = fibs_rec(n-1) # store solution for n-1 (avoid mulitple recursive calls)
  prev << ((prev[-1]+prev[-2]) % MOD) # Xn = Xn-1 + Xn-2
end

# print(fibs(8))
# print(fibs(10000))
# print(fibs_rec(8))
# print(fibs_rec(10000))
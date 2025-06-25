
MOD=10**9 + 7 # mod for large test cases

def fibs(n)
  n=n-1
  arr=[0,1,1]
  return arr[0,n] if n<=2

  (3..n).each do
    arr.push((arr[-1]+arr[-2]) % MOD)
  end
  arr
end

def fibs_rec(n)
  return [0] if n==1
  return fibs_rec(n-1) << 1 if n<=3

  prev = fibs_rec(n-1)
  prev << ((prev[-1]+prev[-2]) % MOD)
end

# print(fibs(8))
# print(fibs(10000))
# print(fibs_rec(8))
# print(fibs_rec(10000))
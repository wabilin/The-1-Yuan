# comb(0, [[1], [2]])
# => [
#      [[0],[1],[2]],
#      [[1, 2], [3]],
#      [[1], [2, 3]]  
#    ]
comb = (x, ys)->
  a = (ys[..])
  a.push [x]
  result = [a]
  for i in [0...ys.length]
    zs = ys[..]
    t = zs[i].slice(0)
    t.push x
    zs[i] = t
    result.push zs

  return result

extendArray = (xs, ys)->
  xs.push.apply xs, ys


allComb = (items)->  
  return [[items]] if items.length == 1
  
 # console.log items.length
  tail = allComb(items[1..])
  ary = []
  for e in tail
    ys = comb items[0], e
    extendArray(ary, ys)

  return ary

###
a = the1yuan([1,2,3,4,5])
for e in a
  console.log e
###

#t = comb 0, [[1],[2,3]]
t = allComb([1,2,3])
console.log t
###
comb(0, [[1], [2]])
=> [
    [[0],[1],[2]],
    [[1, 2], [3]],
    [[1], [2, 3]]  
   ]
###
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


# input a list having lenght >= 1
allComb = (items)->  
  return [[items]] if items.length == 1
  
 # console.log items.length
  tail = allComb(items[1..])
  ary = []
  for e in tail
    ys = comb items[0], e
    extendArray(ary, ys)

  return ary


evalComb = (comb, rate)->
  totalCost = 0
  for xs in comb
    sum = 0
    sum += x.price for x in xs
    totalCost += Math.round(sum * rate)
  return totalCost


getBestComb = (items, rate)->
  combList = allComb(items)
  bestComb = combList[0]
  bestCost = evalComb combList[0], rate

  for x in combList
    xCost = evalComb x, rate
    if xCost < bestCost or (xCost == bestCost and x.length < bestComb.length)
      bestComb = x
      bestCost = xCost

  return bestComb


the1yuan = (itemList, rate)->
  newList = []
  for item in itemList
    newList.push(item) for i in [1..item.num]
    item.num = 1

  getBestComb newList, rate

window.the1yuan = the1yuan
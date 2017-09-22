diceRoll = ->
  return 1 + Math.floor(Math.random() * 6)

players = 5
playersTokens = new Array(players).fill(0)
average = 0


for j in [1...1000000000]
  playersTokens[0] += diceRoll()
  for i in [1...players]
    newDiceRoll = diceRoll()
    movedTokens = Math.min(newDiceRoll, playersTokens[i-1])
    playersTokens[i] += movedTokens
    playersTokens[i-1] -= movedTokens
  if j%100000 == 0
    wip = 0
    average = playersTokens[playersTokens.length-1]/j
    for k in [0...players-1]
      wip += playersTokens[k]
    console.log j+"-th run - wip: " + wip + " tokens: " + playersTokens + " average: " + average
    if average > 3.5 then break
  if average > 3.5 then break
import math
import random

type
  IntArray = array[0..4, int]
var
  playersTokens: IntArray

playersTokens = [0,0,0,0,0]
var players = 5
var newDiceRoll = 0
var movedTokens = 0
var wip = 0
var average = 0.0

for j in 1 ..< 1000000:
  playersTokens[0] += 1 + random(6)
  for i in 1..<players:
    newDiceRoll = 1 + random(6)
    # echo "newDiceRoll:", newDiceRoll
    movedTokens = min(newDiceRoll, playersTokens[i-1])
    playersTokens[i] += movedTokens
    playersTokens[i-1] -= movedTokens
  if j mod 100 == 0:
    wip = 0
    average = float(playersTokens[len(playersTokens)-1])/float(j)
    for k in 0..<players-1:
      wip += playersTokens[k]
    echo j, ", -th run - wip: , ", wip, " , tokens: , ", playersTokens[0], ", ", playersTokens[1], ", ", playersTokens[2], ", ", playersTokens[3], ", ", playersTokens[4], " , average: , ", average

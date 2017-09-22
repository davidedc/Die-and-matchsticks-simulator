# Die-and-matchsticks-simulator
A small simulator of the "die and matchsticks" game from Eliyahu M. Goldratt's "The Goal". Related to blog post at: http://www.davidedc.com/blog/2017/9/22/lets-talk-about-lean-is-goldratts-die-and-matchsticks-example-in-the-goal-correct

**dieMatch.nim** : simulation of the full game, 5 robots, 1 to 6 tokens

**dieMatch.coffee** : same as above, but in coffeescript

**coinMatch.nim** : reduced simulation: 2 robots, 1 to 2 tokens

**coinMatch100Billions.csv** : results of coinMatch

**dieMatchResults100Billions.csv** : results of dieMatch

**convergence to 3.5 first million rounds.png** : picture showing how dieMatch converges to throughput of 3.5

**WIP size simplified simulation.png** : picture showing how the WIP (sum of tokens in intermediate bowls) changes over 100 billion rounds

To run the nim simulations: ```nim compile -d:release --opt:speed --run [the chosen simulation].nim```.

To run the coffeescript simulation: go to the coffeescript.org page, paste-in the code, open the dev console, click play.
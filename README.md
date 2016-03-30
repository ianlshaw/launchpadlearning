# launchpadlearning

### Usage

##### `ruby learnlp.rb CONFIG_FILE`

Included is `example.config`, therefore to run the program against this config file use:

##### `ruby learnlp.rb example.config`

### Example Grid
```
  a  b  c  d  e  f  g  h
1[ ][ ][ ][ ][ ][ ][ ][*]1
2[ ][ ][ ][ ][ ][ ][ ][*]2
3[ ][ ][ ][ ][ ][ ][ ][ ]3
4[ ][ ][ ][ ][ ][ ][ ][ ]4
5[ ][ ][ ][ ][ ][ ][ ][ ]5
6[ ][ ][ ][ ][ ][ ][ ][ ]6
7[ ][ ][ ][ ][ ][ ][ ][ ]7
8[ ][ ][ ][ ][ ][*][ ][ ]8
  a  b  c  d  e  f  g  h
```
This shows the hash:
`@frame1 = Hash["h1" => HIT, "h2" => HIT, "f8" => HIT]`

### To Do:
1. backwards frame control
2. config files as arrays of just coords, instead of the hash crap I've got right now
3. config file generator - from what ... hmmm

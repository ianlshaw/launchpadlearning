# launchpadlearning

### Usage

##### `ruby learnlp.rb CONFIG_FILE`


### To Do:
config file parsing
argument passing
Frame number display
backwards frame control

### Example Grid
```
  a  b  c  d  e  f  g  h
1[*][ ][ ][ ][ ][ ][ ][ ]
2[*][ ][ ][ ][ ][ ][ ][ ]
3[ ][ ][ ][ ][ ][ ][ ][ ]
4[ ][ ][ ][ ][ ][ ][ ][ ]
5[ ][ ][ ][ ][ ][ ][ ][ ]
6[ ][ ][ ][ ][ ][ ][ ][ ]
7[ ][ ][ ][ ][ ][ ][ ][*]
8[ ][ ][ ][ ][ ][ ][ ][ ]
```
This shows the hash:
`@frame1 = Hash["a1" => HIT, "a2" => HIT, "h7" => HIT]`

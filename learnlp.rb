#!/usr/bin/ruby

# Constants

# Time in seconds between frames.
TEMPO = 1

# These are the strings which will be printed to the terminal
HIT = "[*]"
BLANK = "[ ]"

# Variables
# Each frame is a hash of coordiates which should be hit.
#@frame1 = Hash["a1" => HIT, "a2" => HIT, "h7" => HIT]
@frame1 = Hash["a1" => HIT, "a2" => HIT, "h7" => HIT]
@frame2 = Hash["b4" => HIT, "c8" => HIT]
@frame3 = Hash["c2" => HIT, "e1" => HIT, "b1" => HIT]
@frame4 = Hash["h1" => HIT, "h2" => HIT, "f8" => HIT]

# Incase people like this idea.
load 'config.file'

# Array of all the frame Hashes. 
@frames = [@frame1, @frame2, @frame3, @frame4]

# Functions
# This is the main piece of ninjitsu in this program.
def drawBoard(x)
  # Ideally here I'd print the frame number. 
  # Manually print the guide numbers.
  puts "  1  2  3  4  5  6  7  8"
  #Loop through 8 letter guide coordinates.
  ('a'..'h').each do |letter|
    # Print the guide letters
    print letter
    # Loop through 8 guide coordinates.
    (1..8).each do |number|
      # Apply the default string to any Hash values which have not yet been populated.
      x.default = BLANK
      # The only, actually substantive part of this program.
      # Print the grid from the Array of Hash Objects.
      print x["#{letter}#{number}"]
    end
  puts  # end the line
  end
end

# Loop through every member of @frames
def frameLoop
  @frames.each do |frame|
    # Clear the screen before starting.
    system ("clear")
    # Draw the grid, call drawBoard method, passing frame index as argument.
    drawBoard(frame)
    # Wait for input from the user before moving onto the next frame
    gets.chomp
  end
end

# Main
frameLoop

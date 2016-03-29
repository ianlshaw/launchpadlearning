#!/usr/bin/ruby

# Constants
# Amount of columns on the Launchpad
COLUMNS = 8

# Total number of available coordiantes.
COORDS = 64

# Time in seconds between frames.
TEMPO = 1

# These are the strings which will be printed to the terminal
HIT = "[*]"
BLANK = "[ ]"

# Variables
# Each frame is a hash of ac://monitor.thirtythreebuild.co.uk/icinga/cgi-bin/tac.cgitive coordinates.
@frame1 = Hash["a1" => HIT, "a2" => HIT, "h7" => HIT]
@frame2 = Hash["b4" => HIT, "c8" => HIT]
@frame3 = Hash["c2" => HIT, "e1" => HIT, "b1" => HIT]

# Array of all the frames. 
@frames = [@frame1, @frame2, @frame3]

# Functions
# This is the main piece of ninjitsu in this program.
def drawBoard(x)
  ('a'..'h').each do |letter|
    (1..8).each do |i|

      # Apply the default string to any Hash values which have not yet been populated.
      x.default = BLANK

      # The only, actually substantive part of this program.
      # Print the grid from the Array of Hash Objects.
      print x["#{letter}#{i}"]
    end
  puts  # end the line
  end
end

def frameLoop
  # Loop through every member of @frames
  @frames.each do |x|
    # Clear the screen before starting.
    system ("clear")
    # Draw the grid
    drawBoard(x)
    # Wait for input from the user before moving onto the next frame
    gets.chomp
  end
end

# Main
frameLoop

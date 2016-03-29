#!/usr/bin/ruby

# Constants
# Amount of columns on the Launchpad
COLUMNS = 8

# Total number of available coordiantes.
COORDS = 64

# Time in seconds between frames.
TEMPO = 1

BLANK_FRAME_DEFAULT = " "

# These are the strings which will be printed to the terminal
HIT = "[*]"
BLANK = "[ ]"

# Variables
# Each frame is a hash of ac://monitor.thirtythreebuild.co.uk/icinga/cgi-bin/tac.cgitive coordinates.
@frame1 = Hash["a1" => HIT, "a2" => HIT, "h7" => HIT]

# This can maybe be autopopulated once we have a list of frames.
@frame1.default = BLANK

@frame2 = Hash["b4" => HIT, "c8" => HIT]
@frame2.default = BLANK

# list of all the frames. 
# This is horrible, it should be an array of ints, since "frame" won't change.
@frames = ["frame1", "frame2"]

# Functions
# This is the main piece of ninjitsu in this program.
def drawBoard(frame)
  ('a'..'h').each do |letter|
    (1..8).each do |i|
      print @frame1["#{letter}#{i}"]
    end
  puts  # end the line
  end
end

# Main
@frames.each do |x|
  # Clear the screen before starting.
  system ("clear")
  # Draw the grid
  drawBoard(x)
  # Wait for input from the user before moving onto the next frame
  gets.chomp
end

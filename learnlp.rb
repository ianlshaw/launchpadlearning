#!/usr/bin/ruby

# Constants

# Time in seconds between frames.
TEMPO = 1

# These are the strings which will be printed to the terminal
HIT = "[*]"
BLANK = "[ ]"

# Load the config file
load 'config.file'

# Functions
# This is the main piece of ninjitsu in this program.
def drawBoard(frame)
  # Ideally here I'd print the frame number. 
  # Manually print the guide numbers.
  puts "  a  b  c  d  e  f  g  h"
  #Loop through 8 letter guide coordinates.
  (1..8).each do |number|
    # Print the guide letters
    print number
    # Loop through 8 guide coordinates.
    ('a'..'h').each do |letter|
      # Apply the default string to any Hash values which have not yet been populated.
      frame.default = BLANK
      # The only, actually substantive part of this program.
      # Print the grid from the Array of Hash Objects.
      print frame["#{letter}#{number}"]
    end
  print number
  puts  # end the line
  end
  puts "  a  b  c  d  e  f  g  h"
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

#!/usr/bin/ruby

# Constants
# Amount of columns on the Launchpad
COLUMNS = 8

# Total number of available coordiantes.
COORDS = 64

# Time in seconds between frames.
TEMPO = 1

BLANK_FRAME_DEFAULT = " "



# Variables
# Each frame is a hash of active coordinates.
@fr1 = Hash["a1" => "[*]", "a2" => "[*]"]
@fr1.default = "[ ]"

# list of all the frames. 
@frames = ""

# Functions

def drawBoard
      ('a'..'h').each do |letter|
        (1..8).each do |i|
        print @fr1["#{letter}#{i}"]
        end
      puts  # end the line
      end
end

# Main
drawBoard

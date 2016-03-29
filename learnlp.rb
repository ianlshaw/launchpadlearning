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
@frames = ""

# Functions
def drawBoard
      ('a'..'h').each do |letter|
        (1..8).each do |i|
        print @frame1["#{letter}#{i}"]
        end
      puts  # end the line
      end
end

# Main
drawBoard

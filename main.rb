# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates
# require_relative 'find'
# candidate = find(9)
# pp candidate

# pp qualified_candidates(@candidates)
puts
pp ordered_by_qualifications(@candidates)
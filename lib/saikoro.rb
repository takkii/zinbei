# frozen_string_literal: true

require 'pycall/import'

# saikoro 5 num random output.
class Dice
  include PyCall::Import
  def saiko
    pyimport :random
    saikoro = ['⚀', '⚁', '⚂', '⚃', '⚄', '⚅']
    (0..5).each do |_x|
      print ' ' + random.choice(saikoro)
    end
    puts ''
  end
end

#!/usr/bin/env ruby
# frozen_string_literal: true

# vim: filetype=ruby

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

# Zinbei module
module Zinbei
  module_function

  def version
    require 'zinbei/serial'
  end

  def start
    require 'zinbei/page'
  end

  def datetime
    require 'zinbei/datetime'
  end

  def license
    require 'zinbei/license'
  end

  def command
    require 'zinbei/manual'
  end

  def soft
    require 'zinbei/flag'
  end

  def str
    require 'zinbei/str'
  end

  def line
    require 'zinbei/io'
  end

  def upcase
    require 'zinbei/up'
  end

  def downcase
    require 'zinbei/down'
  end

  def num
    require 'zinbei/number'
  end

  def scom
    require 'zinbei/scom'
  end

  def rantan
    require 'zinbei/rantan'
  end
end

v = /\Aversion\z/
ve = /\A[-][v]\z/
d = /\A[-][d]\z/
da = /\Adatetime\z/
h = /\A[-][l]\z/
he = /\Alicense\z/
s = /\Astart\z/
so = /\A[-][s]\z/
co = /\A[-][h]\z/
com = /\Ahelp\z/
m = /\A[-][m]\z/
n = /\A[-][n]\z/
u = /\A[-][u]\z/
o = /\A[-][o]\z/
z = /\A[-][z]\z/
r = /\A[-][r]\z/
t = /\A[-][t]\z/

one = ARGV[0]

include Zinbei

if one.nil?
  soft
elsif one.match?(v)
  require 'zinbei/ika'
  version
elsif one.match?(ve)
  version
elsif one.match?(d)
  datetime
elsif one.match?(da)
  require 'zinbei/ika'
  datetime
elsif one.match?(he)
  license
elsif one.match?(h)
  license
elsif one.match?(s)
  start
elsif one.match?(so)
  start
elsif one.match?(co)
  command
elsif one.match?(com)
  command
elsif one.match?(m)
  str
elsif one.match?(n)
  line
elsif one.match?(o)
  downcase
elsif one.match?(u)
  upcase
elsif one.match?(z)
  num
elsif one.match?(r)
  rantan
elsif one.match?(t)
  scom
else
  puts 'Please choose an option.'
end

__END__

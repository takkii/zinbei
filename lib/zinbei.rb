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
    require 'zinbei/version'
    print Zinbei::VERSION
    print ' : [zinbei_mania_version] '
  end

  def start
    puts '

    == Contributing to zinbei

    ** Fixed **
    The number of files was reduced.

    Remind zinbei option
    * add -v,version
    * add -d,datetime
    * add -h,help
    * add -s,start

    New zinbei option
    **How to use**
    [zinbei -m notojima.txt]
    * add -m
    * add -n
    * add -o
    * add -u

    sava and rantan is zinbei(rubyshell).
    support hakoirimusume project.

    Please remember
    this command by zinbeiw
    * delete * find * remove *exit
    * rename * makefolder * wordcount
    * NumberGame *Numbers *loto6 *Encode
    * OneRunner *Eval * week

    ** Try **
    zinbeiw
    >help
    >exit

    ----Please enter the following words------
    |   in the command prompt for windows    |
    |                                        |
    |              zinbei help               |
    |                                        |
    ------------------------------------------
    wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        Thank you for reading to the last.
    wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
    '
  end

  def datetime
    require 'zinbei/datetime'
  end

  def license
    puts 'LICENSE'.center(60, '-')

    puts '
    The MIT License

    Copyright (c) 2016 ~ 2019 Takayuki Kamiyama

    Permission is hereby granted, free of charge,
    to any person obtaining a copy of this software and
    associated documentation files (the [Software]),
    to deal in the Software without restriction,
    including without limitation the rights to use, copy, modify,
    merge, publish, distribute, sublicense,
    and/or sell copies of the Software,
    and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and
    this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED [AS IS],
    WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
    IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
    DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
    ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
    OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    '
    puts 'LICENSE'.center(60, '-')
  end

  def command
    puts 'COMMAND'.center(60, '-')

    puts '
    [Zinbei]

    -s,start           Start Pages.

    -v,version         Version Infomation

    -d,datetime        What time is it?

    -l,license         License Infomation

    [Example]

    $zinbei -n notojima.txt
    $zinbei -m notojima.txt
    $zinbei -u notojima.txt
    $zinbei -o notojima.txt
    $zinbei -z notojima.txt

    -n                 The number line checked end load file.

    -m                 Returned as a character string and the whole is also output.

    -u                 Character string is changed to a capital letter.

    -o                 Character string is changed to lowercase.

    -z                 Text is indicated.

    -r                 rantan shell in zinbei.

    -t                 scom shell in zinbei.

    [rantan is MileStone_version,sme change name.]

    < how to use >

    zinbei -r [ File name ] [ String or regular expression ]

    < Example >

    >zinbei -r notojima.txt wajima

    If it evaluates whether there is any character string of wajima
    to notojima.txt and is in it, one of them will be outputted!

    < how to use>

    zinbei -t [Filename (read)] [Filename (write)] [change before word] [change after word]

    <Example>

    >zinbei -t notojima.txt Example.txt roman ruby

    Example.txt new_make_file after roman → ruby changed.

    '
    puts 'COMMAND'.center(60, '-')
  end

  def soft
    puts '
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
 ((                                                                    ))
  )) ========= ======  ||\\      || ||========   ||=========  ======   ((
 ((      / /     ||    || \\     || ||        )) ||             ||      ))
  ))    / /      ||    ||  \\    || ||        )) ||             ||     ((
 ((    / /       ||    ||   \\   || ||========   ||=======      ||      ))
  ))  / /        ||    ||    \\  || ||        )) ||             ||     ((
 ((  / /         ||    ||     \\ || ||        )) ||             ||      ))
  )) ========= ======  ||      \\|| ||========   ||=========  ======   ((
 ((                                                                    ))
  ))wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    '
    puts 'RubyShell(Zinbei) is Copyright Takayuki Kamiyama,From 2012 to ' + DateTime.now.year.to_s
    puts ''
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

  def golan_puts
    require 'zinbei/golan_puts'
    golang_puts.new.dream
  end

  def golan_day
    require 'zinbei/golan_day'
    golan_day.new.hope
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
g = /\A[-][g]\z/
f = /\A[-][f]\z/

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
elsif one.match?(g)
  golan_puts
elsif one.match?(g)
  golan_day
else
  puts 'Please choose an option.'
end

__END__

# frozen_string_literal: true

require 'tk'

Dir.mkdir('log', perm = 0o777) unless FileTest.exist?('log')

window = TkRoot.new do
  title 'つぶやきログ版'
  resizable [0, 0]
end

window1 = TkToplevel.new do
  title 'ぼやきったーログ版'
end

TkLabel.new(nil,
            :text => 'ログがとれるつぶやき',
            :fg => 'green').pack

entry = TkEntry.new.pack('side' => 'left')

c = TkButton.new(:text => 'つぶやき').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)

c.command proc {
  saikoro = Random.rand(6)

  case saikoro

  when 4
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'black',
                  :bg => 'yellow').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

  when 3
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'black',
                  :bg => 'white').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

  when 2
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'white',
                  :bg => 'black').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

  when 1
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'black',
                  :bg => 'green').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

  when 0
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'white',
                  :bg => 'red').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

  else
    File.open('log/backup.txt', 'a:utf-8', perm = 0o777) do |f|
      TkLabel.new(window1,
                  :text => f.puts(entry.value.to_s),
                  :text => entry.value.to_s,
                  :fg => 'white',
                  :bg => 'blue').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
    end

 end
}

Tk.mainloop

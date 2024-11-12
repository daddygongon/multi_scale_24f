# coding: utf-8
require 'command_line/global'
require 'colorize'

comm = "ruby file_dummy_task.rb"
results = command_line( comm )
puts results.stdout.green
puts results.stderr.red

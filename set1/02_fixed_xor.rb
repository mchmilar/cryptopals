#!/usr/bin/env ruby

input = '1c0111001f010100061a024b53535009181c'
xor_string = '686974207468652062756c6c277320657965'
expected = '746865206b696420646f6e277420706c6179'

zipped = input.chars.zip(xor_string.chars)
output = zipped.map { |pt, xor| (pt.hex ^ xor.hex).to_s(16) }.join

puts "Output: #{output}"
puts "Correct? #{output == expected}"

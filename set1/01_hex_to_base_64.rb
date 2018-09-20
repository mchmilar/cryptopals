#!/usr/bin/env ruby

require 'Base64'

input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

plain_text = input.chars.each_slice(2).map { |oct1, oct2| (oct1 + oct2).hex.chr }.join
encoded = Base64.strict_encode64(plain_text)

puts "Encoded output: #{encoded}"
puts "Correct? #{expected == encoded}"

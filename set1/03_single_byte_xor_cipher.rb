#!/usr/bin/env ruby
require 'pry-byebug'

input = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'
result_array = []
256.times do |i|
  result_array << input.chars.map { |b| (b.hex ^ i).chr }.join
end
result_array.each { |r| p r }
binding.pry
puts 'somethingk'
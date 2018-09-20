#!/usr/bin/env ruby

module MyMod
  class MyClass
    def self.my_name
      puts name
    end
  end
end

MyMod::MyClass.my_name

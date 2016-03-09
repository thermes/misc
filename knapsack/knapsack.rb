#! /usr/bin/env ruby

(n, x) = gets.chomp!.split
n = n.to_i
x = x.to_i

w = []
ARGF.each do |line|
  line.chomp!
  w << line.to_i
end

w.sort!
def search(w, sum, x)
  if w.nil? || w.length == 0
    return 0
  else
    wi = w[0]
    if sum + wi == x
      return 1
    elsif sum + wi > x
      return 0
    else
      return search(w[1..-1], sum + wi, x) + search(w[1..-1], sum, x)
    end
  end
end

p search(w, 0, x)

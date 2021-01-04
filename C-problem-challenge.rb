# 時刻の計算
require "time"
S = gets
tm = Time.parse(S) + 30*60
puts tm.strftime("%H:%M")


# 時刻の計算
require "time"
N = gets.to_i
N.times do
  line = gets.split(' ')
  tm = Time.parse(line[0]) + line[1].to_i*60*60 + line[2].to_i*60
  puts tm.strftime("%H:%M")
end


# 多重ループ
m = gets.to_i
words = []
m.times do
  words << gets.chomp
end

n = gets.to_i
strs = []
n.times do
  strs << gets.chomp
end

strs.each do |str|
  words.each do |word|
    puts str.include?(word) ? "YES" : "NO"
  end
end


# ループ
N,M,K = gets.split(" ").map(&:to_i)
numbers = []
N.times do
  numbers.push(gets.chomp.split(" ").map(&:to_i))
end
numbers.each do |number|
  puts number.count(K)
end


# 二次元配列ソート
n = gets.to_i
lines = []
while line = gets
  lines << line.chomp.split(" ").map(&:to_i)
end
lines.sort!{|a,b| (b <=> a).nonzero? || (b[1] <=> a[1]) }
lines.each do |line|
  puts line.join(" ")
end
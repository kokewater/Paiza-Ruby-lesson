# プログラミングで彼女を作ろうに出てきた問題のコードです

# 猫セット
S = gets.chomp.chars
C = S.count("c")
A = S.count("a")
T = S.count("t")
MAX = [C,A,T].max
puts [C,A,T].min
puts MAX - C
puts MAX - A
puts MAX - T


# nee socks
n = gets.to_i
m = gets.to_i
str = ''
loop do
  str << 'R' * n
  str << 'W' * n
  break if str.length >= m
end
puts str[0, m]


# long hair
line = readlines.map(&:chomp)
Y = line.count('yes')
puts (Y >= 3 ? 'yes' : 'no')


# pony tail
n = gets.to_i
[*0..n].reverse.each do |i|
  puts (i == 0 ? '0!!' : i)
end


# twin tail
c1, p1 = gets.split(' ').map(&:to_i)
c2, p2 = gets.split(' ').map(&:to_i)
D1 = c1.to_f / p1
D2 = c2.to_f / p2
puts (D1 > D2 ? 1 : 2 )
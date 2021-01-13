# 5以上の整数の合計
n = gets.to_i
sum = 0
n.times do
    int = gets.to_i
    sum += int if int >= 5
end
puts sum


# 足すかかけるか
n = gets.to_i
sum = 0
n.times do
    a,b=gets.split.map(&:to_i)
    if a==b
        sum += a*b
    else
        sum += a+b
    end
end
puts sum


# 指定範囲だけ大文字
num = gets.chomp.split(' ')
str = gets.chomp

first = num[0].to_i - 1
second = num[1].to_i - 1

(0...str.length).each {|n|
    if n >= first && n <= second
        print str[n].upcase
    else
        print str[n]
    end
}


# 文字列の重複カウント
s = gets.chomp
t = gets.chomp
result = 0
(0..(t.size-s.size)).each do |i|
    search = t.slice(i,s.size)
    result += 1 if search == s
end
puts result


# 文字と整数の組のソート
num = gets.chomp.to_i
array = {}

(1..num).each do
  line = gets.chomp.split(' ')
  array[line[1].to_i] = line[0]
end

array = array.sort

array.each do |ele|
  puts ele[1]
end


# 文字列のn文字目とn+1文字目を取り出す
n = gets.chomp.to_i
s = gets.chomp
puts "#{s[n-1]} #{s[n]}" if s[n]


# 文字と整数の組のソート
num = gets.chomp.to_i
array = {}

(1..num).each do
  values = gets.split(' ')
  string = values[0]
  points = values[1].to_i

  if array[string]
    current = array[string]
    array[string] = current + points
  else
    array[string] = points
  end
end

array = array.sort_by { |_string, points| -points }

array.each do |string, points|
  puts "#{string} #{points}"
end


# アルファベット探し
X = gets.chomp
Y = gets.chomp
C = gets.chomp
puts X<=C && C<=Y
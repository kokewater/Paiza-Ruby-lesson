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

# ハッシュ
n = gets.to_i
hash = {}
n.times do
    a,b = gets.split
    hash.store(a,b)
end

S = gets
puts hash[S]


# ハッシュの順序(汚いコードです)
n = gets.to_i
hash = {}
n.times do
    a = gets.chomp
    b = 0
    hash.store(a,b)
end
m = gets.to_i
m.times do
    hash2 = {}
    a,b= gets.split
    b= b.to_i
    hash2.store(a,b)
    hash= hash.merge(hash2){|key,v0,v1|v0+v1}
end
names = hash.keys
names.sort!
names.each do |name|
    puts hash[name]
end


# ハッシュ最終問題
p,q,r = gets.split(" ").map(&:to_i)

hash1 = {}
p.times do
    a,b = gets.split.map(&:to_i)
    hash1.store(a,b)
end

hash2 = {}
q.times do
    a,b = gets.split.map(&:to_i)
    hash2.store(a,b)
end

hash3 = {}
for i in 1..p do
    hash3[i] = hash2[hash1[i]]
end
keys = hash3.keys
keys.each do |key|
    puts "#{key} #{hash3[key]}"
end


# シミュレーション練習
n = gets.to_i
a,b = gets.split.map(&:to_i)
P,K = 1,1
turn = 0
while K<=n do
    K += a*P
    P += K%b
    turn += 1
end
puts turn


# シミュレーション最終問題
H = gets.to_i
# 相手から受けたダメージ
dp = 0
dm = 0
# n-1ターン目に相手から受けたダメージ
p1 = 0
m1 = 0
# n-2ターン目に相手から受けたダメージ
p2 = 0
m2 = 0
i= 0
while H>0 do
    if i<2
        dp = 1
        dm = 1
    else
        dp = m1*2 + m2
        dm = p1 + p2
    end
    p2 = p1
    p1 = dp
    m2 = m1
    m1 = dm
    H -= dp
    i += 1
end
puts i
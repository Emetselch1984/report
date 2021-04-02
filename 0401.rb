text = <<TEXT
You say yes. - @jnchito 8s
I say no. - @BarackObama 12m
You say stop. - @dhh 7h
I say go go go. - @ladygaga Feb 20
Hello, goodbye. - @BillGates 11 Apr 2015
TEXT
text =~/(.+.) -/
scan_text = text.scan(/(.+.) - (@\w+) (\d{1,2}[smh]|(?:\d{2})? [A-Z][a-z]{2} \d+)/)
scan_text.each do |v|
  p v
end
scan_text2 = text.scan(/(@\w+)/)
scan_text3 =
  text.scan(/(\d{1,2}[smh]|(?:\d{2})? [A-Z][a-z]{2} \d+)/)
scan_text4 =
  text.scan(/(\d{1,2}[smh]]|\d+)/)
scan_text3 =
  text.scan(/(\d{1,2}[smh]|(?:\d{2})? [A-Z][a-z]{2} \d+)/)

age = n
case age
when (0..5).include?(age)
  0
when (6..12).include?(age)
  200
when (13..18).include?(age)
  500
else
  100000
end
age = 0
def charge(age)
  case age
  when (0..5).include?(age)
    0
  when (6..12).include?(age)
    200
  when (13..18).include?(age)
    500
  else
    100000
  end
end
age = 0
case age
when 0..5
  0
when 6..12
  200
when 13..18
  500
else
  100000
end
age = 0
def charge(age)
  case age
  when 0..5
    0
  when 6..12
    200
  when 13..18
    500
  else
    100000
  end
end
liquid = 50
(1..100).include?(liquid)
text1 =<<TEXT
アメリカ
イタリア
エストニア
オランダ
ギリシャ
TEXT
text2 =<<TEXT
Hello.
ciao
Tere
hallo
Γεια σας
TEXT
hello_hash = {}
ary_text1 =text1.split
ary_text2 =text2.split
i = 0
ary_text1.each do |v|
  hello_hash[v] = ary_text2[i]
  i+= 1
end
hello_hash
p hello_hash[ary_text1[0]]
def hello_world(ary_text)
  hello_hash =
  {"アメリカ"=>"Hello.", "イタリア"=>"ciao", "エストニア"=>"Tere", "オランダ"=>"hallo", "ギリシャ"=>"Γεια"}
  p hello_hash[ary_text]
end
hello_world(ary_text1[0])
status = "ok"
"異常あり" unless status == "ok"
"異常あり"
case status
when status == "ok"
  "異常なし"
else
  "異常あり"
end
if status == "ok"
  "異常なし"
else
  "異常あり"
end
n = 0
n%15 == 0
n%3 == 0
n%5 == 0
if n%15 == 0
  "Fuzz Buzz"
elsif n%3 == 0
  "Buzz"
elsif n%5 == 0
  "Fuzz"
else
  n.to_s
end
def fizz_buzz(n)
  if n%15 == 0
    "Fuzz Buzz"
  elsif n%3 == 0
    "Buzz"
  elsif n%5 == 0
    "Fuzz"
  else
    n.to_s
  end
end
fizz_buzz(555)
dice = Random.rand(6) + 1
def dice
  Random.rand(6) + 1
end
result = 0
dice_ary = []
10.times do
  result += dice
  dice_ary << dice
end
result
dice_ary
fah = cels = 0
fah = cels * 9 / 5 + 32
cels = (fah - 32) * 5 / 9
def convert_fah(cels)
  fah = cels * 9.0 / 5.0 + 32.0
  fah.round(1)
end
def convert_cels(fah)
  cels = (fah - 32) * 5 / 9
  cels.round(1)
end
1.upto(100) do |v|
  print "#{v}: #{convert_fah(v)}\n"
end
text ="bule 青 white 白 red 赤"
color_hash = {}
ary_text = text.split
while key = ary_text.shift
  value = ary_text.shift
  color_hash[key] = value
end
color_hash
text1 = <<TEXT
月曜日
火曜日
水曜日
木曜日
金曜日
土曜日
日曜日
TEXT
text2 =
<<TEXT
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
TEXT
ary_a  = text1.split
ary_a1 = ary_a.map{|v| v.intern}
ary_b  = text2.split
week_hash = {}
i = 0
ary_a1.each do |v|
  week_hash[v] = ary_b[i]
  i += 1
end
week_hash
week_hash.each do |key,value|
  p "#{key}は#{value}です"
end
text = <<TEXT
二千三百四十一
百
四
三二
TEXT
text_ary = text.split
copy = []
text_ary.map do |v|
  copy << v.dup
end
copy.each do |v|
  v.gsub!(/一/,"1")
  v.gsub!(/二/,"2")
  v.gsub!(/三/,"3")
  v.gsub!(/四/,"4")
  v.gsub!(/五/,"5")
  v.gsub!(/六/,"6")
  v.gsub!(/七/,"7")
  v.gsub!(/八/,"8")
  v.gsub!(/九/,"9") 
end
copy
copy.gsub!(/一/,"1")
copy.gsub!(/二/,"2")
copy.gsub!(/三/,"3")
copy.gsub!(/四/,"4")
copy.gsub!(/五/,"5")
copy.gsub!(/六/,"6")
copy.gsub!(/七/,"7")
copy.gsub!(/八/,"8")
copy.gsub!(/九/,"9")
def convert_kanzi(text)
  
end
to_hex = 25
hex = to_hex.to_s(16)
hex.rjust(2,"0")
def to_hex(a,b,c)
  hex = "#"
  [a,b,c].each do |v|
    hex += v.to_s(16).rjust(2,"0")
  end
  hex
end
hex = "#1bc37309"
r = hex[1..2]
g = hex[3..4]
b = hex[5..6]
ints = []
[r,g,b].each do |v|
  ints << v.hex
end
ints

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r,g,b].map do |v|
    ints <<  v.hex
  end
  ints
end
def greeting(*names)
  "#{names.join('と')},こんにちは"
end
1.step(7,2){|v| ary << v}
ary
10.step(2,-2){|v| ary << v}
def step_ary(start,limit,range)
  ary = []
  start.step(limit,range) {|v| ary << v}
  ary
end
count = 0
result = []
while true
  sample =(1..10000).to_a.sample
  count += 1
  result << sample
  break if sample == 7
end
case count
when 1..10
  p "奇跡"
when 11..100
  p "かなりすごい"
when 101..1000
  p "すごい"
when 1001..3000
  p "まぁまぁ"
when 3001..6000
  p "ふつう"
when 6001..9000
  p "わるし"
when 9001..10000
  p "今日は外でるな"
end
def uranai
  count = 0
  result = []
  while true
    sample =(1..10000).to_a.sample
    count += 1
    result << sample
    break if sample == 7
  end
  case count
  when 1..10
    p "奇跡"
  when 11..100
    p "かなりすごい"
  when 101..1000
    p "すごい"
  when 1001..3000
    p "まぁまぁ"
  when 3001..6000
    p "ふつう"
  when 6001..9000
    p "わるし"
  when 9001..10000
    p "今日は外でるな"
  end
  p count
end
ary =
  %w(
apple
remon
mikan
itigo
banana
)
count = 0
ary.each do |w|
  p "#{w}は好きですか？"
  answer =["はい","いいえ"].sample
  p answer
  count += 1
  redo if answer == "いいえ" && count < 10
end
module Freeze
  def deep_freeze(ary_or_hash)
    case ary_or_hash
    when  Array
      ary_or_hash.map {|v| v.freeze}
    when Hash
      ary_or_hash.each do |v,k|
        v.freeze
        k.freeze
      end
    end
    ary_or_hash.freeze
  end
end
module AwesomeApi
  class << self
    attr_accessor :url,:debug_mode
  end
end
input = event.message['text']
url = "https://www.drk7.jp/weather/xml/13.xml"
xml = open(url).read.toutf8
doc = REXML::Document.new(xml)
xpath = 'weatherforecast/pref/area[4]/'
min_per = 30
case input
when /.*(明日|あした).*/
  per06to12 =  doc.elements[xpath + 'info[2]/rainfallchance/period[2]'].text
end
if per06to12.to_i >= min_per
  push = ""
else
  push = ""
end
doc.elements['weatherforecast/pref/area[4]/info[2]/'].text
class LinebotController < ApplicationController
  require 'line/bot'
  # callbackアクションのCSRFトークン認証を無効
  protect_from_forgery :except => [:callback]
  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      error 400 do 'Bad Request' end
    end
    events = client.parse_events_from(body)
    events.each { |event|
      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          seed1 = select_word
          seed2 = select_word
          while seed1 == seed2
            seed2 = select_word
          end
          message = [{
                       type: 'text',
                       text: "今日の晩御飯は,"
                     },{
                       type: 'text',
                       text: "#{seed1} !!"
                     }]
          client.reply_message(event['replyToken'], message)
        end
      end
    }
    head :ok
  end
  private
  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_id = ENV["LINE_CHANNEL_ID"]
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end
  def select_word
    # この中を変えると返ってくるキーワードが変わる
    seeds = ["ブルターニュ産 オマール海老のコンソメゼリー寄せ キャヴィアと滑らかなカリフラワーのムースリーヌ",
             "自家燻製したノルウェーサーモンと帆立貝柱のムースのキャベツ包み蒸し 生雲丹とパセリのヴルーテ",
             "手長海老のポワレとサフランリゾット 濃厚な甲殻類のクリームソース",
             "国産牛フィレ肉のポワレ 季節の温野菜とマスタードソース オレンジの香りを纏ったブールパチュー",
             "木の実とキャラメルのタルトフィーヌ 濃厚なミルクのソルベ シナモンの風味",
             "ちくわ",
             "けんたろう",
             "お前に食わせる飯はねぇ",
             "自家製サーモンのマリネ 海の恵みの宝石仕立て新鮮な千葉産ガーデングリーンとキャビアを添えて",
             "フランス産トリュフと白舞茸の蒸しコンソメスープロワイヤル仕立て",
             "鱸のポアレ 高知県産完熟トマト蜂蜜風味のシャンパンクリームソース海草と群馬県産濃緑ほうれん草のソテーを添えて",
             "特選国産牛フィレ肉とフォアグラのロースト ランド風ポテトと野生茸のフリカッセ 旬の彩り野菜 フランス産モリーユ茸とヴィンテージポルト酒のソース",
             "ウェディングケーキ 苺のティラミスとバルサミコマリネ ストロベリーアイスクリーム"]
    seeds.sample
  end
end
ary_1 = (1..100).to_a
ary_1.map{|v| v * 100}
ary_1.select { |v| v%3 == 0 }
ary_1.select { |v| v%3 != 0 }
ary_1.sort{|a,b|b <=> a}
ary_1.sort_by{|v| -v}
result = 0
ary_1.each do |v|
  result += v
end
result
ary_1.sum

select_ary = []
10.times do |v|
  select_ary << ary_1[v*10,10]
end
select_ary
ary_a = (5..10).to_a
ary_b = (5..10).to_a
result = []
i = 0
ary_a.each do |v|
  result << v + ary_b[i]
  i += 1
end
result
def sum_ary(val1,val2)
  result = []
  i = 0
  val1.each do |v|
    result << v + val2[i]
    i += 1
  end
  result
end
text ="Ruby is an objected programing language"
text_ary = text.split
text_ary.sort
text_ary.sort_by{|v| v.downcase}
text.each_char do |v|
  p v
end
text.each_char do |v|
  printf("%s: %s\n",v,"*")
end
count = Hash.new(0)
text.each_char do |v|
  count[v] += 1
end
sort_count = count.sort_by{|_,v| -v}.to_h
sort_count.keys.each do |v|
  printf("%s: %s\n",v,"*" * count[v])
end
text = <<TEXT
七千百三十一
二百
TEXT
ary_text =text.split
ary_text.each do |text|
  copy_text = text.dup
  copy_text.gsub!(/一/,"1")
  p copy_text
end
def convert_text(text)
  digital4 = digital3 = digital2 = digital1 = "0"
  copy_text = text.dup
  copy_text.gsub!(/一/,"1")
  copy_text.gsub!(/二/,"2")
  copy_text.gsub!(/三/,"3")
  copy_text.gsub!(/四/,"4")
  copy_text.gsub!(/五/,"5")
  copy_text.gsub!(/六/,"6")
  copy_text.gsub!(/七/,"7")
  copy_text.gsub!(/八/,"8")
  copy_text.gsub!(/九/,"9")
  copy_text =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?/
  if $1
    digital4 = $2 || "1"
  end
  if $3
    digital3 = $4 || "1"
  end
  if $5
    digital2 = $6 || "1"
  end
  if $7
    digital1 = $7 || "0"
  end
  result = digital4 + digital3 + digital2 + digital1
  result.to_i
end
p ary_text.map{|v| convert_text(v)}
pattern ="7千百3十1"
pattern =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?/
$1
$2
$3
$4
$5
$6
$7
$8
digital4 = digital3 = digital2 = digital1 = "0"
if $1
  digital4 = $2 || "1"
end
if $3
  digital3 = $4 || "1"
end
if $5
  digital2 = $6 || "1"
end
if $7
  digital1 = $7 || "0"
end
text1 = <<~TEXT
  月曜日
  火曜日
  水曜日
  木曜日
  金曜日
  土曜日
  日曜日
TEXT
text2 = <<~TEXT
  Monday
  Tuesday
  Wednesday
  Thursday
  Friday
  Saturday
  Sunday
TEXT
ary_text =text1.split
ary = []
ary_text.each do |v|
  ary <<  v.intern
end
ary
week_hash = {}
hash_value = text2.split
i = 0
ary.each do |v|
  week_hash[v] = hash_value[i]
  i += 1
end
week_hash.size
week_hash.each do |key,value|
  p "#{key}は#{value}です"
end
text = "bule 青 white 白 red 赤"
text_ary = text.split
convert_hash = {}
while key = text_ary.shift
  value = text_ary.shift
  convert_hash[key] = value
end
def convert_hash(text)
  text_ary = text.split
  convert_hash = {}
  while key = text_ary.shift
    value = text_ary.shift
    convert_hash[key] = value
  end
  convert_hash
end
cles = fahr = 0
cels　＝　fahr　*　9 /　5　+　32
def convert_cels(fahr)
  cels = fahr.to_i * 9.0 / 5.0 + 32.0
end
def convert_fahr(cels)
  fahr = (cels.to_i - 32.0) /9.0 * 5.0
  fahr.round(1)
end
1.upto(100) do |v|
  p  "#{v} : #{convert_fahr(v)}"
end
Random.rand(1) + 1
status = 'ok'
text1 = "異常なし"
text2 = "異常あり"
if status == 'ok'
  p text1
else
  p text2
end
p text2 unless status == 'ok'

def check_status(status='ok')
  text1 = "異常なし"
  text2 = "異常あり"
  if status == 'ok'
    text1
  else
    text2
  end
end

def check_status2(status = 'ok')
  text2 = "異常あり"
  text2 unless status == 'ok'
end
n = 0
if n %15 == 0
  "Fizz Buzz"
elsif n %3 == 0
  "Fizz"
elsif n %5 == 0
  "Buzz"
else
  n.to_s
end
def fizz_buzz(n)
  if n %15 == 0
    "Fizz Buzz"
  elsif n %3 == 0
    "Fizz"
  elsif n %5 == 0
    "Buzz"
  else
    n.to_s
  end
end
def dice ;Random.rand(6) + 1 end
result = 0
result_ary = []
10.times do |v|
  result +=  v.dice
  result_ary << v.dice
end
text =
  <<TEXT
アメリカ
イタリア
オランダ
ギリシャ
TEXT
ary_a = (1..4).to_a
ary_b = text.split
country_list = {}
i = 0
ary_a.each do |v|
  country_list[v] = ary_b[i]
  i +=1
end

case country
when 'アメリカ'
  p "Hello"
when 'イタリア'
  p 'ciao'
when 'オランダ'
  p 'hallo'
when 'ギリシャ'
  p 'Γεια σας'
end
country = country_list[1]
case country
when 'アメリカ'
  p "Hello"
when 'イタリア'
  p 'ciao'
when 'オランダ'
  p 'hallo'
when 'ギリシャ'
  p 'Γεια σας'
end
def hello_world(default = 1)
  country_list =
    {1=>"アメリカ", 2=>"イタリア", 3=>"オランダ", 4=>"ギリシャ"}

  country = country_list[default]

  case country
  when 'アメリカ'
    p "Hello"
  when 'イタリア'
    p 'ciao'
  when 'オランダ'
    p 'hallo'
  when 'ギリシャ'
    p 'Γεια σας'
  end
end
class Physics
  attr_accessor :name,:temperate

  def initialize(name,temperate)
    @name = name
    @temperate = temperate
  end
  def temp?
    temperate = @temperate
    (0..100).include?(temperate)
  end
end

(0..100).include?(temperature)
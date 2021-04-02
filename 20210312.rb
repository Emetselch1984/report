class User
  attr_accessor :email,:name

  def initialize(email=nil,name=nil)
    @email = email
    @name = name
  end
  def self.build_user
    User.new.tap do |user|
      user.email = "hoge.example.com"
      user.name = "hoge"
    end
  end
end

User.build_user
class User
  attr_accessor :name,:email

  def initialize(name=nil,email=nil)
    @name = name
    @email = email
  end
  def self.build_user
    User.new.tap do |user|
      user.name = "hoge"
      user.email = "hoge@example.com"
    end
  end
end

User.build_user
class User
  attr_accessor :name,:email

  def initialize(name=nil,email=nil)
    @name= name
    @email = email
  end
  def self.build_user
    User.new.tap do |user|
      user.name = "hoge"
      user.email = "hoge@example.com"
    end
  end
end
User.build_user

DESCRIPTIONS = {
  logged_in: "ログイン",
  logged_out: "ログアウト",
  rejected: "ログイン拒否"
}
"rejected".to_sym
class User
  attr_accessor :type
  DESCRIPTIONS = {
    logged_in: "ログイン",
    logged_out: "ログアウト",
    rejected: "ログイン拒否"
  }
  def initialize
    @type = type
  end
  def description
    DESCRIPTIONS[@type.to_sym]
  end
end
taro = User.new
taro.type = "logged_in"
taro.description
class User
  attr_accessor :type
  DESCRIPTIONS ={
    logged_in: "ログイン",
    logged_out: "ログアウト",
    rejected: "ログイン拒否"
  }
  def initialize
    @type = type
  end
  def description
    DESCRIPTIONS[@type.to_sym]
  end
end
taro = User.new
taro.type = "logged_out"
taro.description
class User
  attr_accessor :type
  DESCRIPTIONS = {
    logged_in: "ログイン",
    logged_out: "ログアウト",
    rejected: "ログイン拒否"
  }
  def initialize
    @type = type
  end
  def description
    DESCRIPTIONS[@type.to_sym]
  end
end
taro = User.new
taro.type = "rejected"
taro.description
"811-457".strip.gsub(/-/,"")
"8111foo".strip.gsub(/\\D/,"")
"811-4155".strip.gsub(/-/,"")
"444fff".strip.gsub(/\\D/,"")
"844-4144".strip.gsub(/-/,"")
"744fff".strip.gsub(/\\D/,"")
%i[a b c].map(&:to_s)
%i[a b c].map(&:to_s)
%i[a b c].map(&:to_s)
require 'set'
class Simulator
  NUMBER_OF_TYPES = 55

  def self.simulate
    set_of_cards = Set[]
    all_types = (1..NUMBER_OF_TYPES).to_a
    count = 0
    while set_of_cards.size < NUMBER_OF_TYPES
      you_get = all_types.sample
      if set_of_cards.include?(you_get)
        print "No.#{you_get}がダブった"
      else
        print "No.#{you_get}をゲット"
      end
      set_of_cards << you_get
      count += 1
      puts "(#{count * 110}円),#{set_of_cards.size}/#{NUMBER_OF_TYPES}ゲットなう"
    end
    puts "total = #{count}"
  end
end
Simulator.simulate
require 'set'
class Simulator
  NUMBER_OF_TYPES = 55
  def self.simulate
    set_of_cards = Set[]
    all_types = (1..NUMBER_OF_TYPES).to_a
    count = 0
    while set_of_cards.size < NUMBER_OF_TYPES
      you_get = all_types.sample
      if set_of_cards.include?(you_get)
        print "No.#{you_get}をゲット"
      else
        print "No.#{you_get}がだぶった"
      end
      set_of_cards << you_get
      count +=1
      puts "#{count *110}円,#{set_of_cards.size}/#{NUMBER_OF_TYPES}ゲットなう"
    end
    puts "total= #{count}"
  end
end
Simulator.simulate
require 'set'
class Simulator
  NUMBER_OF_TYPES = 55
  def self.simulate
    set_of_cards = Set[]
    all_types = (1..NUMBER_OF_TYPES).to_a
    count = 0
    while set_of_cards.size < NUMBER_OF_TYPES
      you_get = all_types.sample
      if set_of_cards.include?(you_get)
        print "No.#{you_get}がだぶった"
      else
        print "No.#{you_get}をゲット"
      end
      set_of_cards << you_get
      count += 1
      puts "#{count * 110}円,#{set_of_cards.size}/#{NUMBER_OF_TYPES}ゲットなう"
    end
    puts "total= #{count}"
  end
end
Simulator.simulate
validates :end_date,date{
  after: :start_date,
    before: ->(obj){
    1.year.from_now.to_date
  }
  allow_blank: true
}
validates :end_date,date{
  after: :start_date,
    before: ->(obj){ 1.year.from_now.to_date}
  allow_blank: true
}
validates :end_date,date{
  after: :start_date,
    before: ->(obj){
    1.year.from_now.to_date
  }
  allow_blank: true
}
class Survey < ApplicationRecord
  @sql = <<~SQL
100.0 * SUM(CASE WHEN answer = '' THEN 1 ELSE 0 END)/COUNT(*) AS good,

  SQL
end
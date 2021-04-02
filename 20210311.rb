def opt(options)
  options[:return_value]
end
def opt1(options={})
  options[:return_value]
end
p opt(return_value: 777)

def opt(options)
  options[:return_value]
end
def opt1(options={})
  options[:return_value]
end
p opt1(return_value: 777)

def opt(options)
  options[:return_value]
end
def opt1(options={})
  options[:return_value]
end
p opt1(return_value: 777)

def authentication_response(options={})
  yield(option[:user],options[:failure]) if block_given?
  options[:return_value]
end
def authentication_response(options={})
  yield(options[:user],options[:failure]) if block_given?
  options[:return_value]
end
def authentication_response(options={})
  yield(options[:user],options[:failure]) if block_given?
  options[:return_value]
end

class A
  class << self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  "I am: #{class_name}"
end
A.who_am_i
class A
  class << self
    def class_name
      to_s
    end
  end
end
class B
  def self.class_name
    to_s
  end
end
class B
  def self.self
    p
  end
end
class A
  class <<self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  p "I am: #{class_name}"
end
A.who_am_i

class A
  class << self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  p "I am: #{class_name}"
end
A.who_am_i

guy = "Bob"
guy.define_singleton_method(:hello) {"#{self}: Hello there!"}
guy.hello
guy = "Bob"
guy.define_singleton_method(:hello) {"#{self}: Hello there!"}
guy.hello
guy = "Bob"
guy.define_singleton_method(:hello) {"#{self}: Hello there!"}
guy.hello

ActiveRecord::Base.extend Sorcery::Model
ActiceRecord::Base.send :define_method, :sorcery_adapter do
  @sorcery_adapter || = Sorcery::Adapter::ActiveRecordAdapter.new(self)
end
ActiveRecord::Base.extend Sorcery::Model
ActiveRecord::Base.send :define_method, :sorcery_adapter do
  @sorcery_adapter || = Sorcery::Adapters::ActiveRecordAdapter.new(self)
end
ActiveRecord::Base.extend Sorcery::Model
ActiveRecord::Base.send :define_method, :sorcery_adapter do
  @sorcery_adapter || = Sorcery::Adapters::ActiveRecordAdapter.new(self)
end
class BaseAdapter
  def initialize(model)
    @model = model
  end
  def self.form(klass)
    @klass = klass
    self
  end
end
ActiveRecord::Base.send :define_singleton_method,:sorcery_adapter do
  Sorcery::Adapters::ActiveRecordAdapter.from(self)
end
class BaseAdapter
  def initialize(model)
    @model  = model
  end
  def self.from(klass)
    @klass = klass
    self
  end
end
ActiceRecord::Base.send :define_singleton_method, :sorcery_adapter do
  Sorcery::Adapters::ActiveRecordAdapter.from(self)
end
class BaseAdapter
  def initialize(model)
    @model = model
  end
  def self.from(klass)
    @klass = klass
    self
  end
end
ActiveRecord::Base.send :define_singleton_method, :sorcery_adapter do
  Sorcery::Adapters::ActiveRecordAdapter.from(self)
end
n = 100
cards = Array.new(n,false)
(2..n).each do |i|
  j = i-1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end
n = 100
cards = Array.new(n,false)
(2..n).each do |i|
  j = i -1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end
n = 100
cards = Array.new(n,false)
(2..n).each do |i|
  j = i -1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end

cards[0]
cards[1] = !cards[1]
cards[2] = !cards[2]
cards[3]
cards[8]
(2..100).each do |i|
  j = i-1
  p j
  j += i
end
n = 100
cards = Array.new(n,false)
(2..n).each do |i|
  j = i-1
  j += i
  p j
end
(2..n).each do |i|
  j = i -1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end
n = 100
cards = Array.new(n,false)
i = 2
j = i -1
while(j < cards.size) do
  cards[j] = !cards[j]
  j += i
end
i = 3
j = i -1
while(j < cards.size) do
  cards[j] = !cards[j]
  j += i
end
@string = ARGV[0].to_s
def make_hash
  text = @string.split(/\s+/)
  hash = {}
  while key = text.shift
    value = text.shift
    hash[key] = value
  end

  hash.each do |key,value|
    p "#{key}:#{value}"
  end
end
@string = ARGV[0].to_s
string ="ffao fafa ffaaa fafa faffffa"
text = string.split(/\s+/)
hash = {}
while key = text.shift
  value = text.shift
  hash[key]  = value
end
string = "afa ffav fafa fafa"
def make_hash(string)
  text = string.split(/\s+/)
  hash = {}
  while key = text.shift
    value = text.shift
    hash[key] = value
  end
  hash.each do |key,value|
    p "#{key}:#{value}"
  end
end
make_hash(string)
string = "ffafa fafa jfaj fafa"
def make_hash(string)
  text =string.split(/\s+/)
  hash = {}
  while key = text.shift
    value = text.shift
    hash[key] = value
  end
  hash.each do |key,value|
    p "#{key}:#{value}"
  end
end
make_hash(string)
class A
  def foo
    p "A#foo"
  end
end
module M
  def foo
    p "M#foo"
  end
end
class B <A
  def foo
    super
    p "B#bar"
  end
end
B.new.foo
class A
  def foo
    p "A#foo"
  end
end
module M
  def foo
    p "M#foo"
  end
end
class B < A
  include M
  def foo
    super
    p "B#bar"
  end
end
B.new.foo
B.class.ancestors
class A
  def foo
    p "A#foo"
  end
end
module M
  def foo
    p "M#foo"
  end
end
class B < A
  def foo
    super
    p "B#bar"
  end
end
B.new.foo
B.class.ancestors
str = "ffafjafa"

def str.title?
  self.upcase ==self
end
str.title?
str.methods.grep(/title/)
str.singleton_methods
str = "fafa"
def str.title?
  self.upcase == self
end
str.title?
str.singleton_methods
str.methods.grep(/title/)
str = "fafaa"
str.upcace

str = "fafafafa"
str.upcase

class MyClass_update
  attr_accessor :my_attribute
  def sizee
    @my_attribute.size
  end
  def size
    @my_attribute.size
  end
  def self.deprecate(old_method,new_method)
    define_method(old_method) do |*args,&block|
      warn "#{old_method}は推奨できません。#{new_method}を使って下さい "
      send(new_method,*args,&block)
    end
  end
  deprecate :sizee ,:size
end
user = MyClass_update.new
user.my_attribute = "foo"
user.sizee
class MyClass_update
  attr_accessor :my_attribute
  def sizee
    @my_attribute.size
  end
  def size
    @my_attribute.size
  end
  def self.deprecate(old_method,new_method)
    define_method(old_method) do |*args,&block|
      warn "#{old_method}は推奨できません。#{new_method}を使って下さい"
      send(new_method,*args,&block)
    end
  end
  deprecate :sizee,:size
end
taro =MyClass_update.new
taro.my_attribute = "fukuoka"
taro.sizee
class MyClass_update
  attr_accessor :my_attribute
  def sizee
    @my_attribute.size
  end
  def size
    @my_attribute.size
  end
  def self.deprecate(old_method,new_method)
    define_method(old_method) do |*args,&block|
      warn "#{old_method}は推奨していません。#{new_method}を使って下さい"
      send(new_method,*args,&block)
    end
  end
  deprecate :sizee,:size
end
taro = MyClass_update.new
taro.my_attribute = {
  age: 14,
  birthplace: tokushima
}
taro.size
module Mymodule
  MyConstant = "Outer constant"
  class MyClass
    MyConstant = "Inner constant"
  end
end
Y = "Outer constant"
module C
  Y = "Constant in C"
  M = ::Y
end
Mymodule::MyConstant
Mymodule::MyClass::MyConstant
C::Y
C::M
Mymodule.constants
Mymodule::MyClass.constants
C.constants

module Mymodule
  MyConstant = "Outer constant"
  class MyClass
    MyConstant = "Inner constant"
  end
end
Y = "Outer constant"
module C
  Y = "Constant in C"
  M = ::Y
end
Mymodule.constants
Mymodule::MyClass.constants
Mymodule::MyConstant
Mymodule::MyClass::MyConstant
C::Y
C::M
module Mymodule
  MyConstant = 'Outer constant'
  class MyClass
    MyConstant = "Inner constant"
  end
end
Y = "Outer constant"
module C
  Y = "Constant in C"
  M = ::Y
end
Mymodule::MyConstant
Mymodule::MyClass::MyConstant
C::Y
C::M
Mymodule.constants
class MyClass

end
MyClass.define_method :my_method do |arg,n|
  arg * n
end
obj = MyClass.new
obj.my_method(4,4)
class MyClass ; end
class MyClass ; end
MyClass.define_method :my_method do |arg,n|
  arg * n
end
MyClass.new.my_method(4,4)
class MyClass ; end
MyClass.define_method :my_method do |arg,n|
  arg * n
end
MyClass.new.my_method(4,4)
class Lawyer
  def method_missing(method,*args)
    p "call : #{method}(#{args.join(',')})"
    p "pass　block" if block_given?
  end
end
Lawyer.new.foo
["ff",454,454,54,44].join
["ff",454,454,54,44].join.(',')


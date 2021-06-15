require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1=Startup.new("John's pizza", "john", "google")
s2=Startup.new("Joe's pizza", "joe", "google")
s3=Startup.new("Bo's pizza", "bob", "yahoo")

vc1=VentureCapitalist.new("Bill", 1000)
vc2=VentureCapitalist.new("Josh", 3050)
vc3=VentureCapitalist.new("Boe", 5000000000000)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
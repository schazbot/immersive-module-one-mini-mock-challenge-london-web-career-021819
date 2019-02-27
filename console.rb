require 'pry'
require_relative './book'
require_relative './author'

a1 = Author.new("george orwell")
a2 = Author.new("haruki murakami")
a3 = Author.new("philip k dick")


b1 = Book.new("do androids dream...", a3, 400)
b2 = Book.new("ubik", a3, 400)
b3 = Book.new("a scanner darkly", a3, 250)
b4 = Book.new("norwegian wood", a2, 200)
b5 = Book.new("IQ84",a2 , 330)
b6 = Book.new("1984", a1, 300)




binding.pry
"that's all folks"

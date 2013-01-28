

require 'rubygems' #这句根据情况可选1111
require 'watir'
ie = Watir::IE.new #新建一个IE浏览器的实例
ie.goto("这里输入百度首页网址") #打开百度首页，因为百科内容不能含网址，所以这里没有写成url
#百度首页搜索输入框即为id为"kw"的文本框，设置搜索关键词为"watir"
ie.text_field(:id, "kw").set("watir")
#点击搜索按钮，即id为"su"的button
ie.button(:id, "su").click
if ie.contains_text("Watir简介") #搜索结果的页面包含"Watir简介"字样
puts "Test Passed."
else
puts "Test Failed!"
end
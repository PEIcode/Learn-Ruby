#-*- coding : utf-8 -*- 
# '#'注释, 也可以写在表达式的后面
=begin
这是多行注释
hahahha
别人看不见🙈
=end
puts "Hello, LPZ!"
puts "你好，廖佩志！"
END {
    
    puts "终止程序" # 程序结束时调用 
}
BEGIN {
    #BEGIN会在程序运行之前被调用
    puts "1.初始化程序"
}

#构建 here document 
puts <<EOF
这是创建文档的
可以写
EOF

#输出 puts 和 print
print "hahaha\n"
puts "11111" #puts 会自动换行 否则用'\n'
print "22222\n"

#数值类型（Fixnum，BigNum，float，String, Array, Hash）
a1 = 100
f1 = 12.3
s1 = '123lpz'
s2 = "456lpz"
puts s1 
puts s2
ary = ["123","456","this is a string"]
ary.each do |i|
    puts i
end

info = {"name" => "lpz", "age" => "20"}
info.each do |key, value|
    print key," is ",value,"\n"
end

# '#{expr}' 可以替换任何字符串，expr可以是任意的Ruby表达式
puts "相乘： #{20*3}"

#范围类型
(10..15).each do |n|
    print n, ' '
end
#Ruby中 定义类
class Album
    
    adc = 123  #变量定义(小写字母和下划线开头)
    _abc = 456
    Abc = 222 #常量定义 大写字母开头
end


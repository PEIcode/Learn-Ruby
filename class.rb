#Ruby中 定义类
=begin
    Ruby是一种完美的面向对象的编程语言
    ·数据封装
    ·数据抽象
    ·多态性
    ·继承
    ·局部变量：局部变量是在方法中定义的变量。局部变量在方法外是不可用的。在后续的章节中，您将看到有关方法的更多细节。局部变量以小写字母或 _ 开始。
    ·实例变量：实例变量可以跨任何特定的实例或对象中的方法使用。这意味着，实例变量可以从对象到对象的改变。实例变量在变量名之前放置符号（@）
    ·类变量：类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量在变量名之前放置符号（@@）
    ·全局变量：类变量不能跨类使用。如果您想要有一个可以跨类使用的变量，您需要定义全局变量。全局变量总是以美元符号（$）开始
=end
class Album #类名首字母要大写
    @@name = "album" #类变量，共享在整个继承链中
    @adc = 123  #实例变量
    _abc = 456 #局部变量(小写字母和下划线开头)
    Abc = 222 #常量定义 大写字母开头
    def initialize(id, name, addr)
        @a_id = id
        @a_name = name
        @a_addr = addr
    end
    def putVarNum
        puts @@name
        puts @adc
        # puts _abc
        puts Abc
    end 
    def putAllNum
        puts @a_id
        puts @a_name
        puts @a_addr
    end
    def putAllDetails() #s输出变量用#表示
        puts "Album id #@a_id"
        puts "Album name #@a_name"
        puts "Album addr #@a_addr"
    end
end

# album1 = Album. new
# puts @adc, @@name

#类的初始化以及调用方法
album2 = Album.new("20153523", "lpz", "tianmen")
# puts album2.@a_id
album2.putVarNum 
puts " "
album2.putAllNum
album2.putAllDetails()
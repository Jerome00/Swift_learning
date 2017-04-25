
//Swift 下划线的使用
//1.格式化数字字面量
let doubleNum = 123.456_789
let oneMillion = 1_000_000

//2.忽略元祖的元素值
let http404Error = (404,"Not Found")
let (_,errorMessage) = http404Error

//3.忽略区间值
let i = 3
let j = 10
var k = 1
for _ in 1...j {
    k *= i
}

//4.忽略方法的默认外部参数名
//有外部参数的写法
func sum1 (num1:Int,num2:Int){
    let sum = num1 + num2
    print(sum)
}
sum1(num1: 10, num2: 20)

//没有外部参数写法
func sum2 (_ num1:Int,_ num2:Int){
    let sum = num1 + num2
    print(sum)
}
sum2(10, 30)

//5.忽略具有默认值得参数的外部参数名
func join(_ s1: String,_ s2: String, joiner: String = "aaaa") -> String {
    return s1 + joiner + s2
}


//Swift Copy On Write
//Swift 中的写时赋值是指，值类型只在引用不唯一并且被改动 前赋值
//传统意义的值类型会在被传递或者被赋值给其他变量时就发生赋值行为，写时赋值将在值被传递和赋值给变量时首先检查其引用计数器，如果引用计数器为1（唯一引用），那么意味着并没有其他变量持有该值，对当前值得复制也就可以完全避免。


//Swift获取当前代码的函数名和行号
func getInfo(name:String = #function,line:Int = #line){print(name,line)}
getInfo()






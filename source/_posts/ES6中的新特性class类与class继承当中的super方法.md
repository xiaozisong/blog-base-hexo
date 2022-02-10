---
title: ES6中的新特性class类与class继承当中的super方法
tags: [JavaScript, ES6, 前端]
  

abbrlink: 7c2dfdbb
date: 2022-02-09 23:21:27
---
# ES6中的新增特性 ==> class与class的继承
<!-- more -->
1. 在ES6中新增的class与class继承，class类就是构造函数的一个抽象，class的继承，底层也还是寄生组合式继承，只不过是封装成了一个使用更为简便的语法糖。
2. 那么如何创建一个类？
```
class Person {
  // 恭喜，你成功创建了一个类，类名为Person
} 
```
3. 那如何在类中定义方法呢？我们之前在ES5中，为了定义属性，会在构造函数中定义，方法会在构造函数的原型对象上定义，这样会让构造函数的所有实例都能访问和调用原型上的方法，以便节省内存。那么，在ES6的class中，定义类只需要写在constructor构造方法中即可。比如
```
class Person{
  constructor(name, age){
    this.name = name
    this.age = age
    //本质与ES5中的定义属性方式差距并不是很大
  }
}
```
4. 比较重要的就是继承了，这里面的讲究非常多，比如子类在继承父类时，有自己想要定义的属性，那么就要在子类的constructor中优先调用super()，而且，super()方法一定要优先于this，具体为什么呢？因为ES6与ES5的继承机制不同，ES5是实例在前，继承在后，而ES6则恰恰相反，[这就是为什么ES6中为什么必须调用super()方法，因为这一步会生成一个继承父类的this对象，没有这一步就无法继承父类.](https://es6.ruanyifeng.com/#docs/class-extends)-----《ES6入门》阮一峰著

Framer学习笔记
===

### 图层
基本语法有很明显的OOP风格，起于JS的底也使属性的表达带有浓厚的JSON味道。
```
myLayer = new Layer({x:100, y:100, width:300, height:500, image:"images/test.png"})
myLayer.x = 0
```

### 层级
子图层继承父图层的基本属性，并以父图层为标准。  
```
parentLayer.addSubLayer(childLayer)
```

### 滚动
可以通过设置'scroll'关键字来设定其是否允许滚动
```
layer = new Layer({width:100, height:1000})
layer.scroll = true
```
图层组合到一起的时候称为View视图

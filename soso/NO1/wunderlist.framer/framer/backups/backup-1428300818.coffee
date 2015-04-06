# 第一期作业还是比较简单，主要是 states 的运用以及一些弹出逻辑的梳理，如何弹出的逻辑搞定之后剩下的就是体力活了。

# 加载源文件
wunderlistLayers = Framer.Importer.load "imported/wunderlist"

# 定义各元素初始状态
wunderlistLayers.addnewtask.scale = 0.9;
wunderlistLayers.addnewtask.opacity = 0;

wunderlistLayers.addnewtasktips.x = 240;
wunderlistLayers.addnewtasktips.opacity = 0;

wunderlistLayers.addnewlist.y = 1143;
wunderlistLayers.addnewlist.opacity = 0;

wunderlistLayers.addnewlisttips.y = 1155;
wunderlistLayers.addnewlisttips.x = 320;

wunderlistLayers.addnewlisttips.scale = 0.7;
wunderlistLayers.addnewlisttips.opacity = 0;

# 定义动画
wunderlistLayers.add.states.add("click", {scale:0.8});
wunderlistLayers.add.states.animationOptions = {curve: "spring(300,20,0)"};

wunderlistLayers.addnewtask.states.add("click", {scale:1, opacity:1,});
wunderlistLayers.addnewtask.states.animationOptions = {curve: "spring(300,20,0)"};

wunderlistLayers.addnewtasktips.states.add("click", {x:193, opacity:1});
wunderlistLayers.addnewtasktips.states.animationOptions = {curve: "spring(350,20,0)"};

wunderlistLayers.addnewlist.states.add("click", {y:1016, opacity:1});
wunderlistLayers.addnewlist.states.animationOptions = {curve: "spring(450,30,0)"};

wunderlistLayers.addnewlisttips.states.add("click", {scale:1, opacity:1, x:193, y:1034});
wunderlistLayers.addnewlisttips.states.animationOptions = {curve: "spring(450,30,0)"};

# 开始点击
wunderlistLayers.add.on Events.TouchStart, ->
	wunderlistLayers.add.states.next();	

# 结束点击
wunderlistLayers.add.on Events.TouchEnd, ->
	wunderlistLayers.addnewtask.states.next();	
	wunderlistLayers.addnewtasktips.states.next();
	wunderlistLayers.addnewlist.states.next();	
	wunderlistLayers.addnewlisttips.states.next();	
# 第一期作业还是比较简单，主要是 states 的运用以及一些弹出逻辑的梳理，如何弹出的逻辑搞定之后剩下的就是体力活了。

# 加载源文件
wunderlistLayers = Framer.Importer.load "imported/wunderlist"

addnewtask = wunderlistLayers.addnewtask;
addnewtasktips = wunderlistLayers.addnewtasktips;
addnewlist = wunderlistLayers.addnewlist;
addnewlisttips = wunderlistLayers.addnewlisttips;
add = wunderlistLayers.add;
diban = wunderlistLayers.diban;
nav = wunderlistLayers.nav;
list = wunderlistLayers.list;
home = wunderlistLayers.home;

# 定义各元素初始状态
addnewtask.scale = 0.9;
addnewtask.opacity = 0;

addnewtasktips.x = 240;
addnewtasktips.opacity = 0;

addnewlist.y = 1143;
addnewlist.opacity = 0;

addnewlisttips.y = 1155;
addnewlisttips.x = 320;

addnewlisttips.scale = 0.7;
addnewlisttips.opacity = 0;

nav.opacity = 0;

# 定义动画
add.states.add({TouchStart: {scale: 0.8},TouchEnd: {scale: 1}});
add.states.animationOptions = {curve: "spring(300,20,0)"};

addnewtask.states.add("click", {scale:1, opacity:1});
addnewtask.states.animationOptions = {curve: "spring(300,20,0)"};

addnewtasktips.states.add("click", {x:193, opacity:1});
addnewtasktips.states.animationOptions = {curve: "spring(350,20,0)"};

addnewlist.states.add("click", {y:1016, opacity:1});
addnewlist.states.animationOptions = {curve: "spring(450,30,0)"};

addnewlisttips.states.add("click", {scale:1, opacity:1, x:193, y:1034});
addnewlisttips.states.animationOptions = {curve: "spring(450,30,0)"};

# 开始点击
add.on Events.TouchStart, ->
	add.states.next(["TouchStart","TouchEnd"]);	
# 结束点击
add.on Events.TouchEnd, ->
	addnewtask.states.next();	
	addnewtasktips.states.next();
	addnewlist.states.next();	
	addnewlisttips.states.next();	

# 切换页面
# 定义动画

diban.states.add("click", {y:1335});
diban.states.animationOptions = {curve: "spring(280,30,0)"};

add.states.add("check",{y:1335});

nav.states.add("opacity",{opacity:0.5})
nav.states.animationOptions = {curve: "spring(280,30,0)"};

home.states.add("opacity",{opacity:0, x:-712})
home.states.animationOptions = {curve: "spring(280,30,0)"};

list.opacity = 0
list.states.add("opacity",{opacity:1, x:0})
list.states.animationOptions = {curve: "spring(280,30,0)"};

list.draggable.enabled = true;
list.draggable.speedY = 0;

diban.on Events.Click, ->
	diban.states.next("click");
	add.states.next("check");
	nav.states.next();
	if addnewlist.opacity > 0
		add.off Events.TouchEnd, ->
		addnewtask.states.next();
		addnewtasktips.states.next();
		addnewlist.states.next();
		addnewlisttips.states.next();
	home.states.next();
	list.states.next(["opacity"]);
	
list.draggable.enabled = true;
list.draggable.speedY = 0;

list.on Events.DragMove, ->
	nav.states.next();



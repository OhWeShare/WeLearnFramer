# This imports all the layers for "wunderlist" into wunderlistLayers
wunderlistLayers = Framer.Importer.load "imported/wunderlist"

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

wunderlistLayers.add.states.add("click", {scale:0.8});
wunderlistLayers.add.states.animationOptions = {curve: "spring(300,20,0)"};

wunderlistLayers.addnewtask.states.animationOptions = {curve: "spring(300,20,0)"};





wunderlistLayers.add.on Events.TouchStart, ->
	wunderlistLayers.add.states.next();	


wunderlistLayers.add.on Events.TouchEnd, ->
	wunderlistLayers.addnewtask.opacity = 1;
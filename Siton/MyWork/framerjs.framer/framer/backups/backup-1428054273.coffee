layerBackground = new Layer
	x: 0, y: 0, width: 750, height: 1334
	image: "imported/framerjs/images/background-E1F84544-ACAB-4BF0-9425-629C21A4A9BC.png"
	
layerUsericon = new Layer
	x: 308, y: 110, width: 151, height: 212
	image: "imported/framerjs/images/usericon-CDFA5307-EABA-43FE-8153-C3087E6536DD.png"
	
layerAddnewtask = new Layer
	x: 193, y: 1145, width: 235, height: 98
	scale: 0.3
	opacity: 0
	image: "imported/framerjs/images/addnewtask-CA4E7C3C-1399-44DD-90C2-6827E20CD9A5.png"
	
layerAddnewlist = new Layer
	x: 193, y: 1145, width: 235, height: 98
	scale: 0.3
	opacity: 0
	image: "imported/framerjs/images/addnewlist-F9DD3E57-0D8C-4B08-AD88-DB162AFB89A7.png"
	
layerAdd = new Layer
	x: 330, y: 1145, width: 98, height: 98
	image: "imported/framerjs/images/add-D10CDC86-5C88-44F6-83F4-6B430EB44427.png"
	
	
layerAdd.states.add
	second: {
		scale: 0.5
		opacity: 0}

layerAddnewtask.states.add
	second: {
		properties:
			x: 193, y: 1145
		scale: 1
		opacity: 1}

layerAddnewlist.states.add
	second: {
		properties:
			x: 193, y: 1020
		scale: 1
		opacity: 1}

layerAdd.states.animationOptions =
	curve: "ease-in-out"
	time: 0.2
	
layerAddnewtask.states.animationOptions =
	curve: "ease-in-out"
	time: 0.2
	
layerAddnewlist.states.animationOptions =
	curve: "ease-in-out"
	time: 0.2

#layerAddnewlistfun = () ->
#	layerAddnewlist.animate
#		properties:
#			y: 1020
#			scale: 1
#			opacity: 1
#		curve: "ease-in-out"
#		time: 0.2

layerAdd.on Events.Click, ->
	layerAdd.states.next()
	layerAddnewtask.states.next()
	layerAddnewlist.states.next()
#	layerAddnewlistfun()

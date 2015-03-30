headerLayer = new Layer width:446, height:201, image:"images/header.png"
headerLayer.centerX()
headerLayer.y = 60

questionLayer = new Layer width:352, height:32, opacity:0,image:"images/question.png"
questionLayer.centerX()
questionLayer.y = 300

bioaLayer = new Layer width:174, height:86, x:450, y:400, scale: 0.7, opacity:0, image:"images/item/a.png"
biobLayer = new Layer width:121, height:76, x:850, y:400, scale: 0.7, opacity:0, image:"images/item/b.png"
biocLayer = new Layer width:200, height:92, x:500, y:500, scale: 0.7, opacity:0, image:"images/item/c.png"
biodLayer = new Layer width:79, height:78, x:750, y:650, scale: 0.7, opacity:0, image:"images/item/d.png"
bioeLayer = new Layer width:92, height:86, x:700, y:400, scale: 0.7, opacity:0, image:"images/item/e.png"
biofLayer = new Layer width:159, height:86, x:760, y:530, scale: 0.7, opacity:0, image:"images/item/f.png"
biogLayer = new Layer width:128, height:71, x:550, y:640, scale: 0.7, opacity:0, image:"images/item/g.png"

animateQuestion = new Animation({
	layer: questionLayer,
	properties: {opacity:1, y:280},
	curve: "cubic-bezier(.43,.66,.57,.87)",
	time: 0.4
	})
animateA = new Animation({
	layer: bioaLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.4,
	time: 0.6
	})

animateB = new Animation({
	layer: biobLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.4,
	time: 0.6
	})

animateC = new Animation({
	layer: biocLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.3,
	time: 0.6
	})

animateD = new Animation({
	layer: biodLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.3,
	time: 0.6
	})

animateE = new Animation({
	layer: bioeLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.3,
	time: 0.3
	})
	
animateF = new Animation({
	layer: biofLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.3,
	time: 0.3
	})

animateG = new Animation({
	layer: biogLayer,
	properties: {scale: 1, opacity: 1},
	curve: "spring(500,20,0)",
	delay: 0.3,
	time: 0.3
	})

animateQuestion.start()
animateA.start()
animateB.start()
animateC.start()
animateD.start()
animateE.start()
animateF.start()
animateG.start()
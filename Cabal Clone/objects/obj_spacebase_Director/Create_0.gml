/// @description Insert description here
// You can write your code in this editor
delay_count = 150
line_count = 0

lines = [
function(){
	intro("Meanwhile in the office of J.D. Vance")
},
function (){
	vance_talk("cry", "DADDY!! Help me!");
},
function (){
	vance_talk("cry", "It's cold here! No one told me it would be cold!")
},
function (){
	var message = "They're shooting at us!"
	if global.couch_count <= 0
		message += " And ruining all my couches!"
	vance_talk("cry", message)
},
function (){
	stop_vance();
},
function (){
	putin_talk("talk", "JD... My little blyad...")
},
function (){
	putin_talk("talk", "I got you elected thinking you could handle the Danes.")
}
,
function (){
	putin_talk("talk", "And now you want Daddy to do your job for you...")
},
function (){
	vance_talk("cry", "PLEASE, DADDY!");
},
function (){
	putin_talk("talk", "It's important to be thankful, JD...")
},
function (){
	vance_talk("sad", "THANK YOU, Daddy!")
},
function (){
	putin_talk("talk", "And what are you, JD?")
},
function (){
	vance_talk("sad", "I'm your bitch, Daddy!")
},
function (){
	putin_talk("talk", "Da... Good boy.")
},
function (){
	putin_talk("talk", "Daddy will send help, JD.")
},
function (){
	putin_talk("talk", "Remember, I have pictures. So DON'T FAIL ME!")
},
function (){
	putin_talk("talk", "Chortov nekompetentnyy neudachnik...")
},
function (){
	stop_putin()
	instance_destroy(obj_putin)
	obj_vance.mode = "talk"
	obj_vance.image_index = 0
}
]
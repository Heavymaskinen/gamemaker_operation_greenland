/// @description Insert description here
// You can write your code in this editor
if (line_count >= array_length(lines)) {
	if alarm_get(0) < 0
		alarm_set(0, 100)

	return
}

lines[line_count]()

if (delay_count <= 0) {
	line_count++
	delay_count = 150
}
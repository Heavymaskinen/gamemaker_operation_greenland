/// @description Handle cool-down period

if (cool_down > 0) {
	cool_down--
	cooling = true
} else if (cooling) {
	cooling = false
	rounds = 5
	alarm_set(0, irandom_range(30,50))
}
	
class_name clockTile extends tile


func _toString(value):
	return formatTime(value)

func formatTime(input) -> String:
	var hour = int(input["hour"]) % 12
	var minute = input["minute"]
 
	var formattedHour = (str(hour) if hour != 0 else "")
	var formattedMinute = (" " + str(minute) if minute != 0 else "")
 
	return formattedHour + formattedMinute

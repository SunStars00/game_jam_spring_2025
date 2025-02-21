extends Button



func _on_pressed():
	%SoundPanel.show()


func _on_sound_exit_pressed():
	%SoundPanel.hide()


func _on_all_volume_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(%AllVolume.value))
	

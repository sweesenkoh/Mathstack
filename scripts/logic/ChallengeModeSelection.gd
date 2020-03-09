extends Node
var selectedBg = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	#Set mode select to challenge mode
	global.modeSelected = "Challenge Mode"
	#Hide health and power button
	$SelectedCharacter/healthBar.hide()
	$SelectedCharacter/PowerButton.hide()

func _on_GodotIcon_pressed():
	global.characterSelected = "Godot"
	$SelectedCharacter.displayCharacter()
	print("Godot has been selected!")

func _on_SSIcon_pressed():
	global.characterSelected = "Swee Soldier"
	$SelectedCharacter.displayCharacter()
	print("Swee Soldier has been selected!")

func _on_MrIIcon_pressed():
	global.characterSelected = "Mister I"
	$SelectedCharacter.displayCharacter()
	print("Mister I has been selected!")

func _on_WorldButton_pressed():
	selectedBg = 1
	changeBg()
	
func changeBg():
	#Hide all bg
	$Background.hide()
	$Background2.hide()
	$Background3.hide()
	match selectedBg:
		1:
			$Background.show()
		2:
			$Background2.show()
		3:
			$Background3.show()


func _on_WorldButton2_pressed():
	selectedBg = 2
	changeBg()


func _on_WorldButton4_pressed():
	selectedBg = 3
	changeBg()


func _on_WorldButton3_pressed():
	selectedBg = 1
	changeBg()


func _on_WorldButton8_pressed():
	selectedBg = 2
	changeBg()


func _on_WorldButton7_pressed():
	selectedBg = 3
	changeBg()


func _on_WorldButton6_pressed():
	selectedBg = 1
	changeBg()


func _on_WorldButton5_pressed():
	selectedBg = 2
	changeBg()


func _on_WorldButton10_pressed():
	selectedBg = 3
	changeBg()


func _on_WorldButton9_pressed():
	selectedBg = 1
	changeBg()

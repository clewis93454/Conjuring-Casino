extends Node

@onready var sandbox: Node2D = $Sandbox
@onready var slot_machine_view: Node2D = $SlotMachineView
@onready var slot_machine_camera: Camera2D = $SlotMachineView/Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	slot_machine_view.visible = false
	GameEvents.slot_machine_opened.connect(_on_slot_machine_opened)

func _on_slot_machine_opened() -> void:
	sandbox.visible = false
	sandbox.process_mode = Node.PROCESS_MODE_DISABLED
	slot_machine_view.visible = true
	slot_machine_camera.make_current()

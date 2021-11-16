extends Control


export var title = "untitled"
export var album = "untitled"
export var artist = "untitled"
export(Texture) var thumbnail

onready var _title = $Hbox/Data/Title
onready var _album = $Hbox/Data/Album
onready var _artist = $Hbox/Data/Artist
onready var _thumbnail = $Hbox/TextureRect

# Called when the node enters the scene tree for the first time.
func _ready():
	_title.text = title
	_album.text = album
	_artist.text = artist
	if thumbnail:
		_thumbnail.texture = thumbnail
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

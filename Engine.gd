extends "res://Rules.gd"




# Called when the node enters the scene tree for the first time.
func _ready():
	print (castling_rights)




func get_list_of_legal_moves():
	
	var parity = true
	
	# piece, string
	var board_moves = []
	
	for piece in get_parent().get_node("Rules/Board/AllPieces").get_children():
		if (piece.parity == parity):
			var piece_moves = get_parent().get_node("Rules").get_legal_spaces(piece)
			
			for piece_move in piece_moves:
				board_moves.push_back([piece, piece_move])
	
	return board_moves

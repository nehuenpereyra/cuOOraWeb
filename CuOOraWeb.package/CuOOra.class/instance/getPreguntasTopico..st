accesing
getPreguntasTopico: unTopico
	^(self getAllPreguntas) select: [:unaPregunta| ((unaPregunta getListaTopicos) includes: unTopico)]
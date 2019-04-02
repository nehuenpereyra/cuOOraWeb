adding
agregarRespuesta: unaRespuesta pregunta: unaPregunta
	(listaPreguntas detect: [:preg| preg getTexto = unaPregunta getTexto ] ifNone:[false]) agregarRespuesta: unaRespuesta.
	
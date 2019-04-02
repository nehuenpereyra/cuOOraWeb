initialization
initialize
	super initialize.
	listaRespuestas := SortedCollection sortBlock: [:resp1 :resp2| (resp1 sizeListaLike) <= (resp2 sizeListaLike)].
	listaTopicos := SortedCollection new.
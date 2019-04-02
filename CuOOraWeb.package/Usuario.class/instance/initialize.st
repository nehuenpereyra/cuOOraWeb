initialization
initialize
	fechaCreacion := DateAndTime now.
	listaSeguidos := SortedCollection new.
	listaSeguidores := SortedCollection new.
	listaPreguntas := SortedCollection sortBlock: [ :preg1 :preg2| (preg1 fechaCreacion ) <= (preg2 fechaCreacion )].
	listaTopicosInteresantes := SortedCollection new.
	^self.
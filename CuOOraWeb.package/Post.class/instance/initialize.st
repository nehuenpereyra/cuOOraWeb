initialization
initialize
	fechaCreacion := DateAndTime now.
	listaLike := SortedCollection new.
	listaDislike := SortedCollection new.
	^self.
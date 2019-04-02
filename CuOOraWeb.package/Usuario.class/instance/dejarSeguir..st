removing
dejarSeguir: unUsuario
	(listaSeguidos includes: unUsuario) ifTrue: [listaSeguidos remove:unUsuario].
	((unUsuario getListaSeguidores)  includes: self) ifTrue: [ unUsuario quitarSeguidor: self ].
	
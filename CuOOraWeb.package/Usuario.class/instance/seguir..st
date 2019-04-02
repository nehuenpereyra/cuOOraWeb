adding
seguir: unUsuario
	(listaSeguidos includes: unUsuario) ifFalse: [listaSeguidos add:unUsuario].
	((unUsuario getListaSeguidores)  includes: self) ifFalse: [ unUsuario agregarSeguidor: self ].
	
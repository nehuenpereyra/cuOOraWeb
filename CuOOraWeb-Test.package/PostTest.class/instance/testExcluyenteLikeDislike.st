tests
testExcluyenteLikeDislike
	"Agregamos un usuario a la lista de likes"
	self assert: (post agregarLike: 'user1') sizeListaLike equals: 1.
	post agregarLike: 'user2'.
	post agregarLike: 'user3'.
	post agregarDislike: 'user4'.
	"Un usuario pasa de like a dislike"
	self assert: (((post agregarDislike: 'user3') getListaLike) includes: 'user3') equals: false.
	self assert: ((post  getListaDislike) includes: 'user3') equals: true.
	"Un usario pasa de dislike a like"
	self assert: (((post agregarLike: 'user4') getListaDislike) includes: 'user4') equals: false.
	self assert: ((post  getListaLike) includes: 'user4') equals: true.
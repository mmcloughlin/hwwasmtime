;;! target = "aarch64"

(module
    (func (result i32)
	(i32.const 10)
	(i32.const 20)
	(i32.sub)
    )
)
;;      	 fd7bbfa9             	stp	x29, x30, [sp, #-0x10]!
;;      	 fd030091             	mov	x29, sp
;;      	 fc030091             	mov	x28, sp
;;      	 ff2300d1             	sub	sp, sp, #8
;;      	 fc030091             	mov	x28, sp
;;      	 890300f8             	stur	x9, [x28]
;;      	 500180d2             	mov	x16, #0xa
;;      	 e003102a             	mov	w0, w16
;;      	 00500051             	sub	w0, w0, #0x14
;;      	 ff230091             	add	sp, sp, #8
;;      	 fc030091             	mov	x28, sp
;;      	 fd7bc1a8             	ldp	x29, x30, [sp], #0x10
;;      	 c0035fd6             	ret	
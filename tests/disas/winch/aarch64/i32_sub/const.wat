;;! target = "aarch64"
;;! test = "winch"

(module
    (func (result i32)
	(i32.const 10)
	(i32.const 20)
	(i32.sub)
    )
)
;; wasm[0]::function[0]:
;;       stp     x29, x30, [sp, #-0x10]!
;;       mov     x29, sp
;;       mov     x28, sp
;;       mov     x9, x0
;;       sub     sp, sp, #0x10
;;       mov     x28, sp
;;       stur    x0, [x28, #8]
;;       stur    x1, [x28]
;;       mov     x16, #0xa
;;       mov     w0, w16
;;       sub     w0, w0, #0x14
;;       add     sp, sp, #0x10
;;       mov     x28, sp
;;       ldp     x29, x30, [sp], #0x10
;;       ret
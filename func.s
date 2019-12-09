	section	.text
	global	func
func:
	push	ebp
	mov	ebp, esp
	mov	eax, [ebp+8]
next:
	mov	dl, [eax]
	cmp	dl, '0'
	jl	inc
	cmp	dl, [ebp+12]
	jg	inc
change:
	mov	cl, [ebp+12]
	sub	cl, dl
	add	cl, '0'
	mov	[eax], cl
inc:
	inc	eax
	test	dl, dl
	jnz	next
	mov	eax, [ebp+8]
	mov	esp, ebp
	pop	ebp
	ret

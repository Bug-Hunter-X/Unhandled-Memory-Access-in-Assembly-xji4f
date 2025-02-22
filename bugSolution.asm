mov ecx, someVariable
mov ebx, someOtherVariable
mov edi, someLimit

; Check for bounds
cmp ecx, edi
jge handleOutOfBounds

mov eax, [ebx + ecx*4 + 0x10]

jmp skipOutOfBounds

handleOutOfBounds:
; Handle out-of-bounds condition appropriately. This might involve:
; - Setting an error flag
; - Returning a default value
; - Logging the error
; - Throwing an exception (depending on the environment)
mov eax, 0 ; Return a default value in this case 

skipOutOfBounds:
; ��̕��������������召�̏��ł��邱�Ƃ��m�F����֐� https://www.youtube.com/@ProgrammerCpp
PUBLIC              asm_greater_than
_TEXT               SEGMENT
asm_greater_than    PROC
                    CMP     RCX, RDX        ; ��P����(RCX) �Ƒ�Q����(RDX) ���r����
                    JA      return_true     ; RCX �� RDX ��� above (��) �Ȃ� return_true �ɃW�����v
                    XOR     RAX, RAX        ; �߂�l(RAX) �� 0 ��ݒ肷��
                    RET                     ; �Ăяo�����ɋA��
return_true:
                    MOV     RAX, 1          ; �߂�l(RAX) �� 1 ��ݒ肷��
                    RET                     ; �Ăяo�����ɋA��
asm_greater_than    ENDP
_TEXT               ENDS
                    END

; ��̐��������������Ƃ��m�F����֐� https://www.youtube.com/@ProgrammerCpp
PUBLIC              asm_equal
_TEXT               SEGMENT
asm_equal           PROC
                    CMP     RCX, RDX        ; ��P����(RCX) �Ƒ�Q����(RDX) ���r����
                    JE      return_true     ; RCX �� RDX �� equal (������) �Ȃ� return_true �ɃW�����v����
                    XOR     RAX, RAX        ; �߂�l(RAX) �� 0 ��ݒ肷��
                    RET                     ; �Ăяo�����ɋA��
return_true:
                    MOV     RAX, 1          ; �߂�l(RAX) �� 1 ��ݒ肷��
                    RET                     ; �Ăяo�����ɋA��
asm_equal           ENDP
_TEXT               ENDS
                    END

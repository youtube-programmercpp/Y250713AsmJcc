; 二つの符号無し整数が大小の順であることを確認する関数 https://www.youtube.com/@ProgrammerCpp
PUBLIC              asm_greater_than
_TEXT               SEGMENT
asm_greater_than    PROC
                    CMP     RCX, RDX        ; 第１引数(RCX) と第２引数(RDX) を比較する
                    JA      return_true     ; RCX が RDX より above (上) なら return_true にジャンプ
                    XOR     RAX, RAX        ; 戻り値(RAX) に 0 を設定する
                    RET                     ; 呼び出し元に帰る
return_true:
                    MOV     RAX, 1          ; 戻り値(RAX) に 1 を設定する
                    RET                     ; 呼び出し元に帰る
asm_greater_than    ENDP
_TEXT               ENDS
                    END

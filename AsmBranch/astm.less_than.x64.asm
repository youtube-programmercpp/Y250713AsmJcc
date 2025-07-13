; 二つの符号無し整数が小大の順であることを確認する関数 https://www.youtube.com/@ProgrammerCpp
PUBLIC              asm_less_than
_TEXT               SEGMENT
asm_less_than       PROC
                    CMP     RCX, RDX        ; 第１引数(RCX) と第２引数(RDX) を比較する
                    JB      return_true     ; RCX が RDX より below (下) なら return_true にジャンプする
                    XOR     RAX, RAX        ; 戻り値(RAX) に 0 を設定する
                    RET                     ; 呼び出し元に帰る
return_true:
                    MOV     RAX, 1          ; 戻り値(RAX) に 1 を設定する
                    RET                     ; 呼び出し元に帰る
asm_less_than       ENDP
_TEXT               ENDS
                    END

; 二つの整数が等しいことを確認する関数 https://www.youtube.com/@ProgrammerCpp
PUBLIC              asm_equal
_TEXT               SEGMENT
asm_equal           PROC
                    CMP     RCX, RDX        ; 第１引数(RCX) と第２引数(RDX) を比較する
                    JE      return_true     ; RCX と RDX が equal (等しい) なら return_true にジャンプする
                    XOR     RAX, RAX        ; 戻り値(RAX) に 0 を設定する
                    RET                     ; 呼び出し元に帰る
return_true:
                    MOV     RAX, 1          ; 戻り値(RAX) に 1 を設定する
                    RET                     ; 呼び出し元に帰る
asm_equal           ENDP
_TEXT               ENDS
                    END

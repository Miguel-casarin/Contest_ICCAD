# Problem A
Coloquei os arquivos da competição e alguns arquivos que estou trabalhando e usando para estudar.

## Convertendo com a síntese do Yosys
Na pasta conv deixei os arquivos das definições de trojan convertidos por meio meio do codigo abaixo. 
```verilog
read_verilog entrada/trojan0.v 
async2sync
synth -flatten 
dfflibmap -liberty custon.lib
abc -g AND NAND OR NOR ANDNOT ORNOT
techmap
opt
clean
write_verilog -noexpr saida/conv_trojan0.v
```
A pasta conv possui uma pasta com as entradas contendo os arquivos do contest e uma com as saídas que converti.

Usei a seguinte biblioteca para mapear as células.
```verilog
library(custom_lib) {

    cell(dff) {
        ff(IQ, IQN) {
            clocked_on : "CK";
            next_state : "D";
            clear : "RN";
            preset : "!SN";
        }

        pin(D)  { direction : input; }
        pin(CK) { direction : input; clock : true; }
        pin(RN) { direction : input; }
        pin(SN) { direction : input; }
        pin(Q)  { direction : output; function : "IQ"; }
    }

}

```

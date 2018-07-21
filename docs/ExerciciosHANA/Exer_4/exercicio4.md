#Exercício 4 - HANA

&nbsp;
## Contexto
&nbsp;

Criar uma view que traga o total arrecadado com vôos pelas companhias aéreas, quebrando o montante por período, ano e conexão. Dados de voos (SFLIGHT) devem ser somados para chegar ao resultado esperado. 

A view deve retornar as seguintes informações: 

&nbsp;

| Key | Campo | Origem |
| --- | ----- | ------ |
| **X** | MANDT | SFLIGHT-MANDT |
| **X** | CARRID | SFLIGHT-CARRID |
| **X** | CONNID | SFLIGHT-CONNID |
| **X** | FLYEAR | Calculated Column |
| **X** | FLPERIO | Calculated Column |
| | PAYMENTSUM | SFLIGHT-PAYMENTSUM |

| Calculated Column | Valor | Tipo |
| ----------------- | ----- | ---- |
| FLYEAR | Ano do campo SFLIGHT-FLDATE | NVARCHAR(4) |
| FLPERIO | Ano + Mês do campo SFLIGHT-FLDATE | NVARCHAR(6) |

&nbsp;
![ExerHANA_04_17](../img/Exer_4/ExerHANA_04_17.jpg){: .center}
&nbsp;

&nbsp;
## Calculation View
&nbsp;

Crie uma nova Calculation View do tipo Dimension:

&nbsp;
![ExerHANA_04_01](../img/Exer_4/ExerHANA_04_01.jpg){: .center}
&nbsp;

Adicione um projection da tabela SAPABAP1.SFLIGHT: 

&nbsp;
![ExerHANA_04_02](../img/Exer_4/ExerHANA_04_02.jpg){: .center}

![ExerHANA_04_03](../img/Exer_4/ExerHANA_04_03.jpg){: .center}
&nbsp;

Crie três calculated columns, FLYEAR, FLPERIO e PRICE_FIRST_CLASS:

&nbsp;
```
leftstr("FLDATE",6)
```
![ExerHANA_04_04](../img/Exer_4/ExerHANA_04_04.jpg){: .center}
&nbsp;

&nbsp;
```
leftstr("FLDATE",4)
```
![ExerHANA_04_05](../img/Exer_4/ExerHANA_04_05.jpg){: .center}
&nbsp;

&nbsp;
```
if("SEATSOCC_F" > 0, 
    if("PAYMENTSUM" > 0 , 
        (("PAYMENTSUM" - ("SEATSOCC_B" * "PRICE")) / "SEATSOCC_F") , 
        "PRICE") ,
    0
)
```
![ExerHANA_04_06](../img/Exer_4/ExerHANA_04_06.jpg){: .center}

![ExerHANA_04_07](../img/Exer_4/ExerHANA_04_07.jpg){: .center}
&nbsp;

Adicione um novo node do tipo Aggregation para sumarizar o campo **PAYMENTSUM**:

&nbsp;
![ExerHANA_04_08](../img/Exer_4/ExerHANA_04_08.jpg){: .center}

![ExerHANA_04_09](../img/Exer_4/ExerHANA_04_09.jpg){: .center}
&nbsp;

Selecione os campos desejados:

&nbsp;
![ExerHANA_04_10](../img/Exer_4/ExerHANA_04_10.jpg){: .center}
&nbsp;

Converta o campo **PAYMENTSUM** para uma coluna de agregação, e depois faça um SUM no campo:

&nbsp;
![ExerHANA_04_12](../img/Exer_4/ExerHANA_04_12.jpg){: .center}

![ExerHANA_04_13](../img/Exer_4/ExerHANA_04_13.jpg){: .center}
&nbsp;

Adicione a Aggregation **Aggr_Flights** a Projection final de saída da Calculation View: 

&nbsp;
![ExerHANA_04_15](../img/Exer_4/ExerHANA_04_15.jpg){: .center}

![ExerHANA_04_16](../img/Exer_4/ExerHANA_04_16.jpg){: .center}
&nbsp;

Na aba de **Semantics**, defina os campos de chave primária e mude o **Default Client** na aba de **Properties**:

&nbsp;
![ExerHANA_04_17](../img/Exer_4/ExerHANA_04_17.jpg){: .center}

![ExerHANA_04_18](../img/Exer_4/ExerHANA_04_18.jpg){: .center}
&nbsp;

Salve, ative e teste a view.
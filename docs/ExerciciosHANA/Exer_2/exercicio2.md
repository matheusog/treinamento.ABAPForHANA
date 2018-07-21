#Exercício 2 - HANA

&nbsp;
## Contexto
&nbsp;

Criar uma view que traga dados de conexões (SPFLI) somente com dados de chegada dos voos (omitir informações de partida dos voos). 
A view será o inverso da view criada no exercício 1.

| Key | Campo | Origem |
| --- | ----- | ------ |
| **X** | MANDT | SPFLI-MANDT |
| **X** | CARRID | SPFLI-CARRID |
| | CARRNAME | SCARR-CARRNAME |
| **X** | CONNID | SPFLI-CONNID |
| | COUNTRYTO | SPFLI-COUNTRYTO |
| | CITYTO | SPFLI-CITYTO |
| | AIRPTO | SPFLI-AIRPTO |
| | NAME | SAIRPORT-NAME |
| | DEPARTURE_TIME | SPFLI-DEPTIME |
| | ARRTIME | SPFLI-ARRTIME |

&nbsp;
![ExerHANA_02_11](../img/Exer_2/ExerHANA_02_11.jpg){: .center}

![ExerHANA_02_13](../img/Exer_2/ExerHANA_02_13.jpg){: .center}
&nbsp;

&nbsp;
## Calculation View
&nbsp;

Crie uma nova Calculation View do tipo Dimension:

&nbsp;
![ExerHANA_02_01](../img/Exer_2/ExerHANA_02_01.jpg){: .center}
&nbsp;

Adicione um projection da tabela SAPABAP1.SPFLI: 

&nbsp;
![ExerHANA_02_02](../img/Exer_2/ExerHANA_02_02.jpg){: .center}

![ExerHANA_02_03](../img/Exer_2/ExerHANA_02_03.jpg){: .center}
&nbsp;

Crie um novo node do tipo Join para unir a Projection **Proj_Arrive_Data** e a tabela **SAPABAP1.SAIRPORT**:

&nbsp;
![ExerHANA_02_05](../img/Exer_2/ExerHANA_02_05.jpg){: .center}

![ExerHANA_02_04](../img/Exer_2/ExerHANA_02_04.jpg){: .center}

![ExerHANA_02_06](../img/Exer_2/ExerHANA_02_06.jpg){: .center}
&nbsp;

Crie um novo node do tipo Join para unir o Join **Join_ArriveFlight_Airport** e a tabela **SAPABAP1.SCARR**:

&nbsp;
![ExerHANA_02_07](../img/Exer_2/ExerHANA_02_07.jpg){: .center}

![ExerHANA_02_08](../img/Exer_2/ExerHANA_02_08.jpg){: .center}
&nbsp;

Adicione o Join **Join_ArriveFlight_Company** a Projection final de saída da Calculation View:

&nbsp;
![ExerHANA_02_09](../img/Exer_2/ExerHANA_02_09.jpg){: .center}

![ExerHANA_02_10](../img/Exer_2/ExerHANA_02_10.jpg){: .center}
&nbsp;

Na aba de **Semantics**, defina os campos de chave primária e mude o **Default Client** na aba de **Properties**:

&nbsp;
![ExerHANA_02_11](../img/Exer_2/ExerHANA_02_11.jpg){: .center}

![ExerHANA_02_12](../img/Exer_2/ExerHANA_02_12.jpg){: .center}
&nbsp;

Salve, ative e teste a view:

&nbsp;
![ExerHANA_02_13](../img/Exer_2/ExerHANA_02_13.jpg){: .center}
&nbsp;
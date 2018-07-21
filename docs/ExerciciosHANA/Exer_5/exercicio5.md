#Exercício 5 - HANA

&nbsp;
## Contexto
&nbsp;

Criar uma view que traga dados da view do exercício anterior (CA_EXER_4), fazendo a somatória do valor arrecadado por companhia, conexão e ano. O resultado também deve ter um ranqueamento geral de todas as companhias, mostrando um rank das conexões que mais arrecadaram. 

A view deve retornar as seguintes informações: 

&nbsp;

| Key | Campo | Origem | 
| --- | ----- | ------ |
| **X** | MANDT | CA_EXER_4-MANDT |
| **X** | CARRID | CA_EXER_4-CARRID |
| **X** | CONNID | CA_EXER_4-CONNID |
| **X** | FLYEAR | CA_EXER_4-FLYEAR |
| | PAYMENTSUM | SUM( CA_EXER_4-PAYMENTSUM ) |

&nbsp;
## Calculation View
&nbsp;

Crie uma nova Calculation View do tipo Dimension:

&nbsp;
![ExerHANA_05_01](../img/Exer_5/ExerHANA_05_01.jpg){: .center}
&nbsp;

Adicione um node de Aggregation que fará a somatória do campo CA_EXER_4.PAYMENTSUM:

&nbsp;
![ExerHANA_05_02](../img/Exer_5/ExerHANA_05_02.jpg){: .center}

![ExerHANA_05_03](../img/Exer_5/ExerHANA_05_03.jpg){: .center}

![ExerHANA_05_04](../img/Exer_5/ExerHANA_05_04.jpg){: .center}

![ExerHANA_05_05](../img/Exer_5/ExerHANA_05_05.jpg){: .center}
&nbsp;

Crie um novo node do tipo **Rank**, que fará o ranqueamento da Aggregation **Aggr_Flights_Year**.

&nbsp;
![ExerHANA_05_06](../img/Exer_5/ExerHANA_05_06.jpg){: .center}

![ExerHANA_05_07](../img/Exer_5/ExerHANA_05_07.jpg){: .center}
&nbsp;

Adicione o Rank **Rank_Flights_Year** a Projection final de saída da Calculation View: 

&nbsp;
![ExerHANA_05_08](../img/Exer_5/ExerHANA_05_08.jpg){: .center}

![ExerHANA_05_09](../img/Exer_5/ExerHANA_05_09.jpg){: .center}
&nbsp;

Na aba de **Semantics**, defina os campos de chave primária e mude o **Default Client** na aba de **Properties**:

&nbsp;
![ExerHANA_05_10](../img/Exer_5/ExerHANA_05_10.jpg){: .center}

![ExerHANA_05_11](../img/Exer_5/ExerHANA_05_11.jpg){: .center}
&nbsp;

Salve, ative e teste a view.

&nbsp;
![ExerHANA_05_12](../img/Exer_5/ExerHANA_05_12.jpg){: .center}
&nbsp;
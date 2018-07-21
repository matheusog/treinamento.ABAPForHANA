#Exercício 6 - HANA

&nbsp;
## Contexto
&nbsp;

Criar uma view que traga dados de quantas vezes os aeroportos foram destinos de conexões (ARRIVE e DEPARTURE), tendo assim uma relação dos aeroportos com maior número de conexões.

A view deve retornar as seguintes informações: 

&nbsp;

| Key | Campo | Origem |
| --- | ----- | ------ |
| **X** | MANDT | SPFLI-MANDT |
| **X** | AIRPFROM | SPFLI-AIRPFROM e SPFLI-AIRPTO (UNION) |
| | NO_CONNECTIONS_INT | COUNT(*) |


&nbsp;
## Calculation View
&nbsp;

Crie uma nova Calculation View do tipo Dimension:

&nbsp;
![ExerHANA_06_01](../img/Exer_6/ExerHANA_06_01.jpg){: .center}
&nbsp;

Adicione um novo node de **Aggregation** para tabela **SAPABAP1.SPFLI** fazendo um COUNT. Esse node trará o número de conexões de Departure de cada aeroporto:

&nbsp;
![ExerHANA_06_02](../img/Exer_6/ExerHANA_06_02.jpg){: .center}

![ExerHANA_06_03](../img/Exer_6/ExerHANA_06_03.jpg){: .center}

![ExerHANA_06_04](../img/Exer_6/ExerHANA_06_04.jpg){: .center}
&nbsp;

Renomeie o campo:

&nbsp;
![ExerHANA_06_05](../img/Exer_6/ExerHANA_06_05.jpg){: .center}
&nbsp;

Adicione um novo node de **Aggregation** para tabela **SAPABAP1.SPFLI** fazendo um COUNT. Esse node trará o número de conexões de Arrive de cada aeroporto:

&nbsp;
![ExerHANA_06_06](../img/Exer_6/ExerHANA_06_06.jpg){: .center}

![ExerHANA_06_07](../img/Exer_6/ExerHANA_06_07.jpg){: .center}
&nbsp;

Renomeie o campo:

&nbsp;
![ExerHANA_06_08](../img/Exer_6/ExerHANA_06_08.jpg){: .center}
&nbsp;

Adicione um node **Union** que fará a união entre as duas Aggregations criadas:

&nbsp;
![ExerHANA_06_09](../img/Exer_6/ExerHANA_06_09.jpg){: .center}

![ExerHANA_06_10](../img/Exer_6/ExerHANA_06_10.jpg){: .center}
&nbsp;

Faça a ligação dos campos do Union:

&nbsp;
![ExerHANA_06_11](../img/Exer_6/ExerHANA_06_11.jpg){: .center}
&nbsp;

Adicione uma nova **Projection** que receberá o resultado do node **Union_Airports**:

&nbsp;
![ExerHANA_06_12](../img/Exer_6/ExerHANA_06_12.jpg){: .center}
&nbsp;

Nesse node faremos a conversão do campo NO_CONNECTIONS de NVCARCHAR para INTEGER. Para isso precisamos criar uma nova Calculated Column:

```
int( "NO_CONNECTIONS" )
```
&nbsp;
![ExerHANA_06_13](../img/Exer_6/ExerHANA_06_13.jpg){: .center}

![ExerHANA_06_14](../img/Exer_6/ExerHANA_06_14.jpg){: .center}
&nbsp;

Adicione um novo node **Aggregation** que fará a somatória das conexões:

&nbsp;
![ExerHANA_06_15](../img/Exer_6/ExerHANA_06_15.jpg){: .center}

![ExerHANA_06_16](../img/Exer_6/ExerHANA_06_16.jpg){: .center}
&nbsp;

Adicione a Aggregation **Aggr_No_Connections** à Projection final de saída da Calculation View: 

&nbsp;
![ExerHANA_06_17](../img/Exer_6/ExerHANA_06_17.jpg){: .center}

![ExerHANA_06_18](../img/Exer_6/ExerHANA_06_18.jpg){: .center}
&nbsp;

Na aba de **Semantics**, defina os campos de chave primária e mude o **Default Client** na aba de **Properties**:

&nbsp;
![ExerHANA_06_19](../img/Exer_6/ExerHANA_06_19.jpg){: .center}

![ExerHANA_06_20](../img/Exer_6/ExerHANA_06_20.jpg){: .center}
&nbsp;

Salve, ative e teste a view.

&nbsp;
![ExerHANA_06_21](../img/Exer_6/ExerHANA_06_21.jpg){: .center}
&nbsp;
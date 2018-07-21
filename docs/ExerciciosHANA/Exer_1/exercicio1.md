#Exercício 1 - HANA

&nbsp;
## Contexto
&nbsp;

Criar uma view que traga dados de conexões (SPFLI) somente com dados de partida dos voos (omitir informações de chegada dos voos). 
A view deve retornar as seguintes informações: 

&nbsp;

| Key | Campo | Origem | Hidden |
| --- | ----- | ------ | ------ |
| **X** | CLIENT | SPFLI-MANDT | |
| **X** | AIRCOMPANY_ID | SPFLI-CARRID | |
| | COMPANY_NAME | SCARR-CARRNAME | |
| | COMPANY_CURRENCY | SCARR-CURRCODE | |
| **X** | CONNECTION_ID | SPFLI-CONNID | |
| | DEPARTURE_COUNTRY | SPFLI-COUNTRYFR | |
| | DEPARTURE_CITY | SPFLI-CITYFROM | |
| | DEPARTURE_AIRPORT | SPFLI-AIRPFROM | |
| | DEPARTURE_AIRPORT_NAME | SAIRPORT-NAME | |
| | DEPARTURE_TIME | SPFLI-DEPTIME | |
| | FLIGHT_TIME | SPFLI-FLTIME | |
| | FLIGHT_DISTANCE | SPFLI-DISTANCE | |
| | FLIGHT_DISTANCE_UNIT | SPFLI-DISTID | |
| | FLIGHT_TYPE | SPFLI-FLTYPE | |
| | FLIGHT_DAYS | SPFLI-PERIOD | **X** |

&nbsp;
![ExerHANA_00_A](../img/Exer_1/ExerHANA_00_A.jpg){: .center}

![ExerHANA_00_B](../img/Exer_1/ExerHANA_00_B.jpg){: .center}
&nbsp;

&nbsp;
## Calculation View
&nbsp;

Crie uma nova Calculation View indo em "File>New>Other" ou acessando o menu de contexto com o botão direito do mouse e indo em "New>Other":

&nbsp;
![ExerHANA_01](../img/Exer_1/ExerHANA_01.jpg){: .center}

![ExerHANA_02](../img/Exer_1/ExerHANA_02.jpg){: .center}

![ExerHANA_03](../img/Exer_1/ExerHANA_03.jpg){: .center}
&nbsp;

Vamos criar uma Calculation View do tipo Dimension. Use como no nome **CA_EXER_1_USERNAME**, sendo USERNAME o nome do seu usuário:

&nbsp;
![ExerHANA_04](../img/Exer_1/ExerHANA_04.jpg){: .center}
&nbsp;

Crie um novo node do tipo **Projection**:

&nbsp;
![ExerHANA_05](../img/Exer_1/ExerHANA_05.jpg){: .center}

![ExerHANA_06](../img/Exer_1/ExerHANA_06.jpg){: .center}
&nbsp;

Adicione a tabela **SAPABAP1.SPFLI** (dados de conexões de vôos):

&nbsp;
![ExerHANA_07](../img/Exer_1/ExerHANA_07.jpg){: .center}
&nbsp;

Adicione os seguintes campos à saída da Projection:

&nbsp;
![ExerHANA_08](../img/Exer_1/ExerHANA_08.jpg){: .center}
&nbsp;

Renomeie os campos de saída da Projection:

&nbsp;
![ExerHANA_09](../img/Exer_1/ExerHANA_09.jpg){: .center}

![ExerHANA_10](../img/Exer_1/ExerHANA_10.jpg){: .center}
&nbsp;

Reposicione os campos deixandos na seguinte ordem:

&nbsp;
![ExerHANA_11](../img/Exer_1/ExerHANA_11.jpg){: .center}

![ExerHANA_12](../img/Exer_1/ExerHANA_12.jpg){: .center}
&nbsp;

Renomeie a Projection para um nome mais significativo:

&nbsp;
![ExerHANA_13](../img/Exer_1/ExerHANA_13.jpg){: .center}

![ExerHANA_14](../img/Exer_1/ExerHANA_14.jpg){: .center}

![ExerHANA_15](../img/Exer_1/ExerHANA_15.jpg){: .center}
&nbsp;

Adicione um novo node do tipo **Join**:

&nbsp;
![ExerHANA_16](../img/Exer_1/ExerHANA_16.jpg){: .center}

![ExerHANA_17](../img/Exer_1/ExerHANA_17.jpg){: .center}
&nbsp;

Use o node do tipo Join para unir a Projection **Connection_Data** e a tabela **SAPABAP1.SAIRPORT**:

&nbsp;
![ExerHANA_18](../img/Exer_1/ExerHANA_18.jpg){: .center}

![ExerHANA_19](../img/Exer_1/ExerHANA_19.jpg){: .center}

![ExerHANA_20](../img/Exer_1/ExerHANA_20.jpg){: .center}

![ExerHANA_21](../img/Exer_1/ExerHANA_21.jpg){: .center}
&nbsp;

Renomeie o Join para um nome mais significativo:

&nbsp;
![ExerHANA_22](../img/Exer_1/ExerHANA_22.jpg){: .center}
&nbsp;

Faça a ligação dos campos do Join entre as duas entidades:

&nbsp;
![ExerHANA_23](../img/Exer_1/ExerHANA_23.jpg){: .center}

![ExerHANA_24](../img/Exer_1/ExerHANA_24.jpg){: .center}
&nbsp;

Use o Join do tipo Referrential:

&nbsp;
![ExerHANA_25](../img/Exer_1/ExerHANA_25.jpg){: .center}
&nbsp;

Adicione os campos a seguir para os campos de saída do Join:

&nbsp;
![ExerHANA_26](../img/Exer_1/ExerHANA_26.jpg){: .center}

![ExerHANA_27](../img/Exer_1/ExerHANA_27.jpg){: .center}

![ExerHANA_28](../img/Exer_1/ExerHANA_28.jpg){: .center}
&nbsp;

Renomeie o campo **NAME** para um label mais significativo:

&nbsp;
![ExerHANA_29](../img/Exer_1/ExerHANA_29.jpg){: .center}

![ExerHANA_30](../img/Exer_1/ExerHANA_30.jpg){: .center}
&nbsp;

Crie um novo node do tipo Join entre o **Join_Connection_Airport** e a tabela **SAPABAP1.SCARR**, adicionando os seguintes campos de saída:

&nbsp;
![ExerHANA_33](../img/Exer_1/ExerHANA_33.jpg){: .center}

![ExerHANA_31](../img/Exer_1/ExerHANA_31.jpg){: .center}

![ExerHANA_32](../img/Exer_1/ExerHANA_32.jpg){: .center}
&nbsp;

Adicione o Join a Projection final de saída da Calculation View:

&nbsp;
![ExerHANA_34](../img/Exer_1/ExerHANA_34.jpg){: .center}

![ExerHANA_35](../img/Exer_1/ExerHANA_35.jpg){: .center}

![ExerHANA_36](../img/Exer_1/ExerHANA_36.jpg){: .center}
&nbsp;

Clique no node de **Semantics**:

&nbsp;
![ExerHANA_37](../img/Exer_1/ExerHANA_37.jpg){: .center}
&nbsp;

Marque o campo **Flight_Days** como **Hidden**:

&nbsp;
![ExerHANA_38](../img/Exer_1/ExerHANA_38.jpg){: .center}
&nbsp;

Marque os campos que são chave primária da View:

&nbsp;
![ExerHANA_39](../img/Exer_1/ExerHANA_39.jpg){: .center}
&nbsp;

Vá na aba **Properties** e ajuste o **Default Client** de **Session Client** para **Cross Client**:

&nbsp;
![ExerHANA_40](../img/Exer_1/ExerHANA_40.jpg){: .center}
&nbsp;

Salve e ative a view:

&nbsp;
![ExerHANA_41](../img/Exer_1/ExerHANA_41.jpg){: .center}

![ExerHANA_42](../img/Exer_1/ExerHANA_42.jpg){: .center}

![ExerHANA_44](../img/Exer_1/ExerHANA_44.jpg){: .center}
&nbsp;

Para visualizar os dados da view, clique em **Data Preview**:

&nbsp;
![ExerHANA_43](../img/Exer_1/ExerHANA_43.jpg){: .center}

![ExerHANA_45](../img/Exer_1/ExerHANA_45.jpg){: .center}
&nbsp;
#Exercício 1 - Eclipse

&nbsp;
## Contexto
&nbsp;

Nesse exercício vamos aprender a como se conectar à um sistema HANA pelo Eclipse e como criar um novo projeto de desenvolvimento. 

&nbsp;
## Conectando à Plataforma HANA
&nbsp;

Abra a perspectiva de HANA Development no Eclipse em "Window>>Perspective>>Open Perspective>>Other":

&nbsp;
![HANA_PROJ_01_01](../img/HANA_Project/HANA_PROJ_01_01.jpg){: .center}

![HANA_PROJ_01_02](../img/HANA_Project/HANA_PROJ_01_02.jpg){: .center}
&nbsp;

Com a perspectiva aberta, clique em "Add System":

&nbsp;
![HANA_PROJ_01_03](../img/HANA_Project/HANA_PROJ_01_03.jpg){: .center}
&nbsp;

Na tela aberta preencha os dados com o host da plataforma HANA, a instância, o "Tenant", o idioma e uma descrição para identificar o ambiente, depois clique em "Next":

&nbsp;
![HANA_PROJ_01_04](../img/HANA_Project/HANA_PROJ_01_04.png){: .center}
&nbsp;

Informe seu usuário e senha, clique em "Next" e depois em "Finish"

&nbsp;
![HANA_PROJ_01_05](../img/HANA_Project/HANA_PROJ_01_05.png){: .center}

![HANA_PROJ_01_06](../img/HANA_Project/HANA_PROJ_01_06.png){: .center}
&nbsp;

Caso seja seu primeiro logon, o sistema vai pedir para você redefinir sua senha:

&nbsp;
![HANA_PROJ_01_07](../img/HANA_Project/HANA_PROJ_01_07.png){: .center}

![HANA_PROJ_01_08](../img/HANA_Project/HANA_PROJ_01_08.jpg){: .center}
&nbsp;

O sistema HANA vai aparecer no seu workspace: 

&nbsp;
![HANA_PROJ_01_09](../img/HANA_Project/HANA_PROJ_01_09.jpg){: .center}
&nbsp;


&nbsp;
## Adicionando um novo repositório
&nbsp;

Nesse passo vamos criar um repositório novo para utilizamos para os desenvolvimentos. Vá na aba "Repositories":

&nbsp;
![HANA_PROJ_01_10](../img/HANA_Project/HANA_PROJ_01_10.jpg){: .center}
&nbsp;

Clique em "Create Repository Workspace": 

&nbsp;
![HANA_PROJ_01_11](../img/HANA_Project/HANA_PROJ_01_11.jpg){: .center}
&nbsp;

Dê o nome do repositório seguindo o padrão "tech_**username**" e clique em "Finish":

&nbsp;
![HANA_PROJ_01_12](../img/HANA_Project/HANA_PROJ_01_12.jpg){: .center}
&nbsp;

&nbsp;
## Criando um novo projeto
&nbsp;

Nessa etapa vamos criar um novo projeto ligado ao repositório criado no passo anterior. Acesse a aba "Project Explorer":

&nbsp;
![HANA_PROJ_01_13](../img/HANA_Project/HANA_PROJ_01_13.jpg){: .center}
&nbsp;

Crie um novo "XS Project" indo em "File>>New>>XS Project":

&nbsp;
![HANA_PROJ_01_14](../img/HANA_Project/HANA_PROJ_01_14.jpg){: .center}
&nbsp;

Dê o nome do projeto de "Tech_Treinamento_**USERNAME**", e depois clique em "Next":

&nbsp;
![HANA_PROJ_01_15](../img/HANA_Project/HANA_PROJ_01_15.jpg){: .center}
&nbsp;

Selecionem o workspace/repository criado no passo anterior e desmarquem a opção Add Project Folder as Subpackage:

&nbsp;
![HANA_PROJ_01_16](../img/HANA_Project/HANA_PROJ_01_16.jpg){: .center}

![HANA_PROJ_01_17](../img/HANA_Project/HANA_PROJ_01_17.jpg){: .center}
&nbsp;

Cliquem em "**Browse**" e selecione o pacote "**mog**":

&nbsp;
![HANA_PROJ_01_18](../img/HANA_Project/HANA_PROJ_01_18.jpg){: .center}

![HANA_PROJ_01_19](../img/HANA_Project/HANA_PROJ_01_19.jpg){: .center}

![HANA_PROJ_01_20](../img/HANA_Project/HANA_PROJ_01_20.jpg){: .center}
&nbsp;

No campo "**Repository Package**" complemente o valor "**mog**" com o seu usuário, ficando com um padrão "**mog.username**", em sequência clique em "Next":

&nbsp;
![HANA_PROJ_01_21](../img/HANA_Project/HANA_PROJ_01_21.jpg){: .center}

![HANA_PROJ_01_22](../img/HANA_Project/HANA_PROJ_01_22.jpg){: .center}
&nbsp;

Desmarque todos os checkbox dessa última tela, e clique em "Finish":

&nbsp;
![HANA_PROJ_01_23](../img/HANA_Project/HANA_PROJ_01_23.jpg){: .center}
&nbsp;

###Erro de File Encoding

Após o projeto ser criado provavelmente vai ocorrer um erro de "File encoding Cp1252 not supported", devido ao Eclipse não estar configurado para trabalhar com formato de arquivo UTF-8. Para corrigir esse problema vá em "**Window>Preferences**"

&nbsp;
![HANA_PROJ_01_24](../img/HANA_Project/HANA_PROJ_01_24.jpg){: .center}
&nbsp;

Acesse o menu "**General>Workspace**":

&nbsp;
![HANA_PROJ_01_25](../img/HANA_Project/HANA_PROJ_01_25.jpg){: .center}
&nbsp;

Altere a configuração de Text file encoding de "**Default (Cp1252)**" para "**Other**", selecionando a opção "**UTF-8**": 

&nbsp;
![HANA_PROJ_01_26](../img/HANA_Project/HANA_PROJ_01_26.jpg){: .center}
&nbsp;

###Projeto não aparece no Project Explorer

Em algumas versões do Eclipse, o XS Project não está configurado para aparecer na perspectiva de "HANA Development". Caso após você criar o seu projeto o mesmo não aparecer na aba "Project Explorer" da perspectiva de "HANA Development", acesse a perspectiva de "Java":

&nbsp;
![HANA_PROJ_01_28](../img/HANA_Project/HANA_PROJ_01_28.jpg){: .center}

![HANA_PROJ_01_27](../img/HANA_Project/HANA_PROJ_01_27.jpg){: .center}
&nbsp;

&nbsp;
![HANA_PROJ_01_29](../img/HANA_Project/HANA_PROJ_01_29.jpg){: .center}
&nbsp;

##Ativando seu projeto

Após o projeto ser criado no passo anterior, o pacote criado com o projeto ("**mog.username**") vai existir apenas localmente na sua máquina (design-time). Vamos então ativar o mesmo, para que o pacote que foi criado no projeto seja espelhado no HANA em tempo de runtime.

Clique com o botão direito em cima do seu projeto, e acesse o menu "**Team>Activate All...**":

&nbsp;
![HANA_PROJ_01_30](../img/HANA_Project/HANA_PROJ_01_30.jpg){: .center}
&nbsp;

Marque todos os objetos e clique em "Ok":

&nbsp;
![HANA_PROJ_01_31](../img/HANA_Project/HANA_PROJ_01_31.jpg){: .center}
&nbsp;

Na view de "Job Log" você pode acompanhar o processo de ativação, e se o mesmo concluiu com sucesso ou se ocorreu algum erro:

&nbsp;
![HANA_PROJ_01_32](../img/HANA_Project/HANA_PROJ_01_32.jpg){: .center}
&nbsp;

Após a ativação ser concluída, nosso pacote estará commitado no HANA. Para verificar, acesse a aba "**Systems**" e verifique a pasta "**Content**", o seu pacote deverá constar como um subpacote do pacote "mog":

&nbsp;
![HANA_PROJ_01_33](../img/HANA_Project/HANA_PROJ_01_33.jpg){: .center}
&nbsp;
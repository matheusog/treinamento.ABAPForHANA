#Pré-Requisitos

&nbsp;
## Instalação do SAP GUI 7.5 
&nbsp;

Durante o processo de instalação dos arquivos abaixo, atente-se à versão do seu sistema operacional, se é 32 ou 64 bits. 

&nbsp;
### Windows
&nbsp;

Baixar o SAP GUI 7.5 e os patchs mais recentes no SAP ONE Support (necessário S-User com permissão), ou baixar no link abaixo do Google Drive. 

[SAP GUI 7.5](https://drive.google.com/open?id=12b8gWxzsrcRmfww4vUPuXFH4HIKw8LLy)

Instale na ordem o SAP GUI 7.5, o último patch (Patch 6) e os hotfix liberados para o patch instalado (Patch 6 Hotfix 1). 

&nbsp;
![SAP_GUI_01](img/SAP_GUI/SAP_GUI_01.png){: .center}
&nbsp;

&nbsp;
### Instalação do JAVA 8 JDK
&nbsp;

&nbsp;
### Windows
&nbsp;

Acesse o site da Oracle e instale o [Java JDK 8](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html) (instalar o update mais recente, desde que seja Java 8. Atentar ao fato que é preciso instalar o JDK e não o JRE, e o Java precisa estar na versão 8 (versões anteriores não servem).

Após a instalação, verifique se existe a variável de sistema JAVA_HOME e se ela está apontando para o diretório de instalação do seu Java JDK.

&nbsp;
![JAVA_00](img/JAVA/JAVA_00.jpg){: .center}

![JAVA_01](img/JAVA/JAVA_01.png){: .center}

![JAVA_02](img/JAVA/JAVA_02.png){: .center}

![JAVA_03](img/JAVA/JAVA_03.png){: .center}
&nbsp;

&nbsp;
## Instalação do Eclipse
&nbsp;

Para instalação do Eclipse é preciso ter o JAVA instalado previamente.

&nbsp;
### Windows
&nbsp;

Acesse o site do [Eclipse](http://www.eclipse.org/oxygen/) e faça download do [Eclipse Oxygen 4.7](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/oxygen/R2/eclipse-inst-win64.exe)

Instale a opção "Eclipse IDE for Java Developers"

&nbsp;
![Eclipse_01](img/Eclipse/EclipseInstall_01.png){: .center}
&nbsp;

&nbsp;
## Instalação do ADT (ABAP Development Tools)
&nbsp;

&nbsp;
### Windows
&nbsp;

Os passos a seguir estão descritos no site [SAP Development Tools ABAP](https://tools.hana.ondemand.com/#abap) para instalar o plugin ADT (ABAP Development Tools) no Eclipse Oxygen.

* Abra o Eclipse Oxygen; 

* Vá em _**Help>Install New Software..**_;

&nbsp;
![ADT_01](img/ADT/ADT_01.jpg){: .center}
&nbsp;

* Adicione o repositório **https://tools.hana.ondemand.com/oxygen** e pressione **Enter**;

&nbsp;
![ADT_02](img/ADT/ADT_02.jpg){: .center}

![ADT_03](img/ADT/ADT_03.jpg){: .center}

![ADT_04](img/ADT/ADT_04.jpg){: .center}
&nbsp;

* Marque as opções **ABAP Development Tools** e **SAP HANA Tools** e clique em **Next**;

&nbsp;
![ADT_05](img/ADT/ADT_05.jpg){: .center}
&nbsp;

* Clique novamente em **Next**, aceite os termos de licença e clique em **Finish**;

&nbsp;
![ADT_06](img/ADT/ADT_06.jpg){: .center}

![ADT_07](img/ADT/ADT_07.jpg){: .center}
&nbsp;

* O Eclipse vai começar a baixar e instalar os Plugins de ABAP e de HANA; 

&nbsp;
![ADT_08](img/ADT/ADT_08.jpg){: .center}
&nbsp;

* Caso apareça algum warning, basta clicar em Install **Anyway**;

&nbsp;
![ADT_09](img/ADT/ADT_09.jpg){: .center}
&nbsp;

* Após conclusão da instalação, será necessário reiniciar o Eclipse Oxygen;

&nbsp;
![ADT_10](img/ADT/ADT_10.jpg){: .center}
&nbsp;

Para verificar se a instalação dos plugins ocorreu com sucesso, basta seguir os seguintes procedimentos:  

* Acesse o menu **Window>Perspective>Open Perspective>Other...**;

&nbsp;
![ADT_11](img/ADT/ADT_11.jpg){: .center}
&nbsp;

* Deverá ter as duas perspectivas na lista de perspectivas, a de ABAP e a de HANA; 

&nbsp;
![ADT_12](img/ADT/ADT_12.jpg){: .center}

![ADT_13](img/ADT/ADT_13.jpg){: .center}
&nbsp;
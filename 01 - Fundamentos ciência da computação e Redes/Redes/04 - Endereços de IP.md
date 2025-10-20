Sempre que dispositivos de computação são conectados em uma rede, eles precisam de protocolos para se comunicar entre si.
Se os dispositivos quiserem se comunicar pela internet, eles devem usar os protocolos de rede da internet.

Para entendermos sobre protocolos de redes é de suma importância sabermos oque significa "ENDEREÇOS DE IP",  o protocolo de internet (IP) é um dos protocolos centrais da camada da internet, ele é usado em todas as comunicações da internet para lidar com endereçamento e roteamento.
Quando um computador envia uma mensagem para outro computador, ele deve especificar o endereço IP do destinatário e também incluir seu próprio endereço de IP.

![Diagrama de dois servidores. O servidor nº 1 é rotulado com o IP 216.3.128.12 e o servidor nº 2 é rotulado com o IP 24.130.242.17. A seta vai do servidor nº 1 ao servidor nº 2 com uma caixa que diz "PARA: 24.130.242.17 DE: 216.3.128.12" e 4 bits 0 1 0 1.](https://cdn.kastatic.org/ka-perseus-images/3d17f7212c84868a1a6403298aebb5601ed8bcee.svg)

Hoje existe duas versões do protocolo de internet:
- IPV4 a primeira versão usada na internet;
- IPV5 a segunda versão, um sucessor compátivel com versões anteriores;

Cada endereço de IP é dividido em 4 números, e cada um desses números podem variar de 0 a 255
[0-255].[0-255].[0-255].[0-255]

Calculando sobre os valores máximos, usando IPV4 temos aproximadamente 4,2 bilhoes de endereços IPV4 disponíveis

Porém temos muito mais que 4,2 bilhões  de dispositivos conectados na internet, logo vem o IPV6 para resolver esse problema, onde é representado da seguinte forma:

![[ipv6.png]]

representando, daria uma possibilidade de 2^128 de ips disponíveis para dispositivos na rede.

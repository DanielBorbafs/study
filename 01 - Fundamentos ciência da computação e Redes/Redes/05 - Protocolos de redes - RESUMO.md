Um protocolo de rede é essencialmente um conjunto de **regras e convenções** utilizadas no diálogo entre entidades que se comunicam. Basicamente, um protocolo é um **acordo** entre as partes comunicantes que estabelece como a comunicação deve ocorrer.

### TCP/IP
**TCP/IP** não é um único protocolo, mas sim uma **suíte de protocolos** que trabalham juntos:
- **TCP** - Cuida da confiabilidade e ordem dos dados
- **IP** - Cuida do endereçamento e roteamento

**Camada de Aplicação**
**Função**: Interface com aplicativos do usuário  
**Protocolos**: HTTP, FTP, SMTP, DNS, SSH  
**Exemplo**: Seu navegador usando HTTP

 **Camada de Transporte**
**Função**: Comunicação fim-a-fim entre aplicações  
**Protocolos**: TCP, UDP  
**Exemplo**: Garantir que todos os pacotes cheguem na ordem correta

**Camada de Internet**
**Função**: Roteamento entre redes  
**Protocolos**: IP, ICMP, ARP  
**Exemplo**: Decidir o melhor caminho para os dados

 **Camada de Acesso à Rede**
**Função**: Transmissão física dos dados  
**Protocolos**: Ethernet, Wi-Fi, PPP  
**Exemplo**: Cabos de rede, sinais Wi-Fi

![[tcpip 1.png]]


### UDP
**UDP** (User Datagram Protocol) é um protocolo da camada de transporte que prioriza **velocidade sobre confiabilidade**.

✅ **Vantagens:**
- **Baixa latência** - Extremamente rápido
- **Sem overhead** - Cabeçalho pequeno (apenas 8 bytes)
- **Sem estabelecimento de conexão**
- **Transmissão broadcast/multicast**

 **Desvantagens:**
- **Não confiável** - Sem confirmação de entrega
- **Sem controle de fluxo**
- **Sem ordenação de pacotes**
- **Pacotes podem se perder**

### HTTP

HTTP (Hypertext Transfer Protocol) é o protocolo usado para comunicação entre clientes (normalmente navegadores) e servidores na web. Ele define **como as mensagens são formatadas e transmitidas** e **como os servidores e navegadores devem reagir a diferentes comandos**.

- **Cliente:** Quem faz a requisição (ex.: navegador, aplicativo mobile, Postman).
- **Servidor:** Quem responde à requisição (ex.: servidor web Apache, Nginx, ou API backend).
- **Requisição (Request):** Mensagem enviada pelo cliente para o servidor.
- **Resposta (Response):** Mensagem enviada pelo servidor ao cliente.
-
Uma requisição HTTP típica tem três partes principais:

`GET /index.html HTTP/1.1`

- `GET` → método HTTP (veremos abaixo)
- `/index.html` → recurso que você quer acessar
- `HTTP/1.1` → versão do protocolo

```
Host: www.exemplo.com
User-Agent: Mozilla/5.0
Accept: text/html
```

### Principais métodos HTTP

|Método|Uso|
|---|---|
|GET|Recuperar dados de um recurso. Não deve alterar nada no servidor.|
|POST|Enviar dados para criar um recurso.|
|PUT|Atualizar um recurso existente (substituição completa).|
|PATCH|Atualizar parcialmente um recurso.|
|DELETE|Apagar um recurso.|
|OPTIONS|Descobrir quais métodos e funcionalidades o servidor suporta.|

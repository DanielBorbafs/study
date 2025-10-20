Devemos ter em mente que tudo o que as máquinas manipulam ou processam — o que constitui o pensamento computacional — deve ser reduzido a padrões de bits.

Afinal, o que são **bits**?  
Bits são códigos binários compostos pelos números **0** e **1**, representando dois estados possíveis:

- **0** → desligado / falso / sem energia
- **1** → ligado / verdadeiro / com energia


Esses valores não são apenas símbolos: eles correspondem a **pulsos elétricos** que percorrem os **fios e circuitos** do computador. Quando há corrente elétrica, o circuito está em nível alto (1); quando não há, em nível baixo (0). Assim, milhões de sinais elétricos viajam constantemente pelos fios de cobre e trilhas da placa-mãe, transportando dados e instruções em forma binária.

![Uma sequência de números 0 e 1, com 336 números de comprimento.](https://cdn.kastatic.org/ka-perseus-images/0cc95ce2ff78aa07cff0951e3b1697bea84a0eea.svg)

A **CPU** (Unidade Central de Processamento) é responsável por reconhecer e executar instruções compostas por conjuntos de bits. Ela coordena o trabalho com base no conceito de **programa armazenado**, onde tanto o programa quanto os dados são guardados na memória, ambos como padrões de bits que circulam eletricamente pelos barramentos internos.

Em suma, embora o **pensamento computacional** seja um conceito abstrato (baseado em lógica e algoritmos), ele é concretizado pela máquina como um processo físico de **movimentação e transformação de sinais elétricos** — os bits — dentro dos circuitos. A capacidade de uma máquina de exibir comportamento inteligente depende, portanto, da **informação e lógica codificadas nesses fluxos elétricos binários**.

## Sistema Binário
![[Binary System.png]]


### Textos em binário
![[strings.png]]

A imagem acima mostra como os textos são representados digitalmente por meio de **bits** (dígitos binários). Cada caractere, como as letras **D**, **O** e **G**, é convertido em um número segundo uma tabela de codificação — por exemplo, o **ASCII**.  
Nesse sistema, a letra **D** corresponde ao número **4**, **O** ao **15** e **G** ao **7**, e cada um desses números é representado em binário:
- D → 4 → 0100
- O → 15 → 1111
- G → 7 → 0111
Assim, o computador armazena e processa texto como uma sequência de **0s e 1s**, que correspondem a estados elétricos (ligado/desligado). Essa conversão é a base da comunicação digital: mesmo textos complexos são, em última instância, conjuntos de bits interpretados de acordo com uma codificação padronizada.

### Imagens em binário
As **imagens** em computadores são formadas por milhões de pequenos pontos chamados **pixels** (_picture elements_). Cada pixel representa uma **cor** específica, e essa cor é codificada em bits, de forma parecida com a codificação dos textos.
- Cada pixel é representado por um conjunto de **valores numéricos** (normalmente inteiros).
- Esses valores indicam a **intensidade das cores primárias da luz**: **vermelho (R), verde (G) e azul (B)** — o chamado modelo **RGB**.
Um pixel azul puro seria:
- R = 0 → `00000000`
- G = 0 → `00000000`
- B = 255 → `11111111`

### Sons em binário
os **sons**, assim como textos e imagens, também são representados por **números binários (bits)**, mas o processo é um pouco diferente, pois o som é **uma onda contínua** e precisa ser **convertido para o formato digital**.
Um arquivo de áudio digital (como `.wav` ou `.mp3`) é uma **sequência de amostras em binário**, junto com informações extras como:
- Frequência de amostragem
- Taxa de bits
- Número de canais (mono ou estéreo)
Esses bits, quando reproduzidos, são convertidos novamente em ondas elétricas pelo alto-falante, recriando o som original.

![[sound_bits.png]]


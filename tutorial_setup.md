# Setting Machine for Deep Learning

## Ambiente 

Em primeiro lugar, nós vamos instalar duas ferramentas que servirão para isolar o nosso ambiente de desenvolvimento do restante do sistema. Isso é importante para que as versões das ferramentas que nós vamos utilizar para Machine Learning não entrem em conflito com as versões do sistema ou com as versões que você pode usar em outras aplicações. Para isso nós usaremos o [`virtualenv`](https://virtualenv.pypa.io/en/stable/) e o [`virtualenvwrapper`](https://virtualenvwrapper.readthedocs.io/en/latest/). 

### Instalação e configurações básicas

A instalação é bastante simples:

* Virtual Env
	`[sudo] pip install virtualenv`
* Virtual Env Wrapper
	`sudo pip install virtualenvwrapper`

Para a configuração inicial do `virtualenvwrapper` é necessário adicionar um comando ao arquivo de inicialização. Em geral, esse arquivo está localizado em `~/.bash_profile`.

Verifique onde está o arquivo `virtualenvwrapper.sh`. Normalmente este arquivo estará em `usr/local/bin/virtualenvwrapper.sh`. Para confirmar basta rodar o seguinte comando:

`which virtualenvwrapper.sh`

Uma vez que nós já temos o caminho para esse arquivo, devemos adicionar o seguinte comando ao `~/.bash_profile`:

`source /usr/local/bin/virtualenvwrapper.sh`

Este comando fará com que sempre que o sistema for inicializado, o script `virtualenvwrapper.sh` será executado.

Para não ter de reiniciar o seu terminal, basta executar o seguinte comando após editar o `.bash_profile`:

`source ~/.bash_profile`

### Criando o nosso ambiente

Para criar um novo ambiente, basta executar o seguinte comando `mkvirtualenv env1` (onde, obviamente, você deve substituir `env1` pelo nome do ambiente que você deseja criar).

Caso você queira "sair" do ambiente criado, basta executar o comando `deactivate`. Para retornar ao ambiente, `workon <nome do ambiente>`.

Após a criação do ambiente, você perceberá que o nome do ambiente em que você está trabalhando está à esquerda do prompt de comando. Agora vamos instalar as nossas ferramentas dentro desse ambiente.

## Ferramentas de trabalho 

Sem dúvidas a lista de ferramentas necessárias para machine learning dependerá do tipo de aplicações e experimentos que serão realizados. Neste tutorial nós instalaremos algumas ferramentas básicas e você pode estender a lista de acordo com as suas necessidades.

Nós instalaremos o seguinte:

* jupyter
* numpy
* matplotlib
* scipy
* tensorflow
* Theano
* Keras

Em geral, o comando para instalar uma ferramenta qualquer é `pip install <nome da ferramenta>`. A menos que seja necessário especificar a versão, nesse caso, você deve usar `pip install <nome da ferramenta> <versão>`.

*Certifique-se de que está no ambiente criado* (no nosso caso, `env1`) notando o nome do ambiente à esquerda do prompt de comando.

Execute o comando para instalação do `jupyter`:

```bash
(env1)$ pip install jupyter
```

Em seguida, faça o mesmo para as outras ferramentas.


## CUDA

O [CUDA](http://docs.nvidia.com/cuda/cuda-installation-guide-mac-os-x/index.html#axzz4f2QkMaZv) é a ferramenta que usamos para aproveitarmos a capacidade da GPU para aumentar a performance computacional nas aplicações de Deep Learning.

Para podermos usar o CUDA, é necessário:

* Um GPU que permita o uso (em geral, as GPUs da Nvidia);
* macOS 10.11 ou superior
* Clang e toolchain instaladas usando Xcode
* NVIDIA CUDA ToolKit, disponível para download [aqui](https://developer.nvidia.com/cuda-downloads)

Para verificar se você tem a toolchain instalada, execute o seguinte comando:

```bash
$ /usr/bin/cc --version
```

Caso não esteja instalado, instale primeiro o Xcode pela App Store. Em seguir, execute o seguinte comando para instalar a toolchain:

```bash
$ xcode-select --install
```







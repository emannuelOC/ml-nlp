# Configurando o Macbook para Machine Learning

A ideia desse post é documentar ~a Odisseia~ os passos necessários para preparar uma máquina para rodar os experimentos de Machine Learning. Isso pode ser bastante útil para alguém que esteja começando (como eu! 🙃) ou mesmo para alguém que já fez tudo isso alguma vez mas, por algum motivo, precisa instalar tudo mais uma vez na máquina.

Eu pretendo criar um script para automatizar todo esse processo, mas enquanto isso não acontece, fica aqui esse tutorial.

As configurações da máquina que eu vou usar são essas:

* Macbook Pro (Retina, 15-inch, Late 2013)
* Processor: 2,3 GHz Intel Core i7
* Memory: 16 GB 1600 MHz DDR3
* Graphics: NVIDIA GeForce GT 750M 2048 MB, Intel Iris Pro 1536 MB

E as ferramentas que nós instalaremos são essas:

* jupyter
* numpy
* matplotlib
* scipy
* scikit-learn
* tensorflow
* Theano
* Keras
* h5py

## Virtual Env Wrapper

Nós usaremos o [Virtual Env Wrapper](https://virtualenvwrapper.readthedocs.io/en/latest/) para isolar o nosso ambiente das configurações do sistema (e também para nos livrar dos problemas chatos de permissão 😉).

O comando para a instalação é `pip install virtualenvwrapper`.

Caso ocorra o erro: `Command "python setup.py egg_info" failed with error code 1 in /private/tmp/pip-build-6ljdt8ga/virtualenvwrapper/`

Tentar:
	https://coderwall.com/p/-k_93g/mac-os-x-valueerror-unknown-locale-utf-8-in-python

	export LC_ALL=en_US.UTF-8
	export LANG=en_US.UTF-8

Outro erro (caso da versão 2.7 do python):
	- instalar o python 3
	- usar o pip3 no comando


	sudo pip install --ignore-installed six
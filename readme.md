# Configuração iOS

## Pré-requisitos

### Ferramentas

Utilizei o gerenciador de pacotes [Homebrew](https://brew.sh/index_pt-br) pela facilidade na instalação e atualização dos pacotes.

A ferramenta de automação [Ansible](https://www.ansible.com/) foi escolhida para configuração dado meu conhecimento prévio da ferramenta e sua simplicidade.

### Instalação

Para instalar o Homebrew utilize o seguinte comando (**retirado do próprio site do homebrew**):

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Com o homebrew instalado, a instalação do ansible é simples:

    brew update
    brew install ansible

Algumas roles como o oh-my-zsh tem como pré-requisito o CommandLineTools do XCode:

    xcode-select --install

## Automação

O projeto está dividido em playbooks para manter a simplicidade dos scripts, para facilitar a instalação parcial de ferramentas (caso o somente parte do conjunto interesse) e para facilitar a manutenção do projeto.

### Como rodar

1. Mantenha apenas as roles que te interessam no arquivo [main-playbook.yml](main-playbook.yml)
2. Crie o arquivo variaveis.json conforme o [exemplo](variaveis.json.exemplo)
3. Rode o comando:

        ansible-playbook -i localhost -e "@variaveis.json" main-playbook.yml
4. Algumas confirmações podem ser necessárias na instalação

### Roles disponíveis no momento

* [git](./git/readme.md)
* [java](./java/readme.md)
* [nvm](./nvm/readme.md)
* [oh-my-zsh](./oh-my-zsh/readme.md)
* [visual-studio-code](./visual-studio-code/readme.md)
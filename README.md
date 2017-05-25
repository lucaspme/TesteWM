# Challenge Wallmart

## Dependencias

	* Ruby 2.3.3

## Instruções de Instalação

	* Instalar bundler

        $ gem install bundler

	* Instalando Projeto

		$ git clone https://github.com/lucaspme/TesteWM.git
		$ bundle install

## Opções
	* `ENV` - Setar o ambiente onde será executado o teste
	    * `api`

## Exemplo:
	* Para testes:
		$ cucumber --tag ENV=api

## Observações:
    Estava desenvolvendo esse projeto quando me foi enviado pela mazza um novo challenge. Interrompi o desenvolvimento do mesmo e esse é o parcial do que seria entregue.
     O parâmetro ENV é obrigatório, não tendo sido desenolvido um default. A tag para execução é @api_done

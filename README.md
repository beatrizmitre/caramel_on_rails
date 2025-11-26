# Caramel on Rails

Uma aplicação Rails para gerenciar e mostrar nossos queridos caramelos de rua (vira-latas).

## Requisitos

- Ruby 3.4.7
- Rails 8.0+
- SQLite3

## Instruções de Configuração

### 1. Clone o repositório

```bash
git clone https://github.com/beatrizmitre/caramel_on_rails.git
cd caramel_on_rails
```

### 2. Instale as dependências

```bash
bundle install
```

### 3. Configure o banco de dados

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

O comando seed irá popular o banco de dados com nossos caramelos: Bambino, Paçoca, Rogerinho, Faxina e Pix.

### 4. Inicie o servidor de desenvolvimento

```bash
bin/dev
```

A aplicação estará disponível em `http://localhost:3000`

## Funcionalidades

- Visualizar todos os caramelos
- Adicionar novos caramelos
- Editar informações dos caramelos
- Ver histórias individuais dos caramelos
- Acompanhar a intensidade do olhar julgador (muito importante!)

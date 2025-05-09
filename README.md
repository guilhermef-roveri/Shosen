![Logo](https://github.com/user-attachments/assets/844a7df0-3272-40e7-b8c8-dd011eafe9da)

# Shosen 🥋⚫



Shosen é um projeto desenvolvido para incentivar e promover o conhecimento do Judô, despertando interesse em começar a praticar e treinar o esporte. Com um site interativo, o usuário pode descobrir curiosidades e ensinametos que o Judô me trouxe, além de diversas informações gerais.
Nosso sistema oferece um gráfico competitivo, onde é possível subir no ranking ao fazer nossos Quiz e também mostrar o quanto você está se empenhando nos treinos!

## Tecnologias Utilizadas

- **Frontend:** HTML, CSS e JavaScript
- **Backend:** Node.js
- **Banco de Dados:** MySQL

## Funcionalidades

- **Quiz de Conhecimentos Gerais:** Um quiz sobre o esporte Judô para testar e motivar a busca de conhecimento dos usuários.
- **Gráfico de Horas de Treino:** Exibe um gráfico com o registro de horas treinadas diariamente, incentivando o acompanhamento do progresso em um ranking.

## Estrutura do Projeto

- `public/`: Arquivos estáticos, como CSS, imagens e JavaScript frontend.
- `src/`: Código fonte principal.
  - `controllers/`: Lógica de controle para as rotas e funcionalidades.
  - `models/`: Definições de modelos para interação com o banco de dados MySQL.
  - `views/`: Templates HTML para renderizar as páginas.
- `database/`: Arquivo de configuração e scripts SQL para o banco de dados MySQL.
- `app.js`: Arquivo principal que configura e inicia o servidor.

## Configuração e Execução

### 💻 Pré-requisitos

- Node.js e npm instalados
- MySQL configurado
- VsCode recomendado para início do projeto

### 🚀 Instalação Shosen

1. Clone este repositório:
   ```GitBash ou CMD
   git clone https://github.com/guilhermef-roveri/Shosen.git
   ```

2. Instale as dependências:
   ```GitBash ou CMD
   cd Shosen
   npm install
   ```

3. Configure o banco de dados:
   - Crie um banco de dados MySQL.
   - Importe o arquivo SQL na pasta `src/database/` para criar as tabelas.
   - Atualize as credenciais de conexão com o MySQL no arquivo de configuração env ou env.dev (Dependendo de seu uso).

4. Inicie o servidor:
   ```bash
   npm start
   ```

5. Acesse o site em `http://localhost:3333`.

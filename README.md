# Chat App em Flutter

Este é um aplicativo de chat desenvolvido em Flutter que permite aos usuários enviar mensagens de texto em tempo real. O aplicativo possui integração com o Firebase para controle de login e cadastro, além de notificações para dispositivos Android e iOS.

## Funcionalidades

- Login e Cadastro: Os usuários podem criar uma conta e fazer login usando seus endereços de e-mail e senhas.
- Lista de Conversas: Os usuários podem ver uma lista de suas conversas existentes e selecionar qualquer conversa para visualizar as mensagens trocadas.
- Envio de Mensagens: Os usuários podem enviar mensagens de texto para outros participantes da conversa em tempo real.
- Notificações Push: O aplicativo é capaz de enviar notificações push para dispositivos Android e iOS sempre que uma nova mensagem é recebida.

## Integração com o Firebase

O aplicativo utiliza a plataforma Firebase para a autenticação de usuários e armazenamento de mensagens. Foram feitas modificações nas seguintes dependências:

### Cloud Firestore

- **Versão:** `cloud_firestore: ^2.5.0`


Foram realizadas alterações específicas no Cloud Firestore para melhorar a organização e recuperação das mensagens das conversas. Essas alterações proporcionaram um desempenho mais eficiente e uma experiência de chat mais responsiva.

### Firebase Authentication

- **Versão:** `firebase_auth: ^3.0.2`

O Firebase Authentication foi integrado ao aplicativo para gerenciar a autenticação dos usuários. Isso inclui o registro de novas contas e o login seguro. A nova versão também trouxe melhorias na segurança e no fluxo de autenticação.

## Requisitos

Antes de começar, certifique-se de ter as seguintes dependências instaladas em seu ambiente de desenvolvimento:

- Flutter SDK

## Configuração

1. Clonar o repositório do projeto:

```
git clone https://github.com/seu-usuario/nome-do-repositorio.git
```

2. Navegar para o diretório do projeto:

```
cd nome-do-repositorio
```

3. Instalar as dependências do Flutter:

```
flutter pub get
```

## Executando o App

Conecte um dispositivo físico ou use um emulador Android/iOS para executar o aplicativo:

```
flutter run
```

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas, bugs ou tiver sugestões de melhorias, fique à vontade para abrir um problema ou enviar um pull request para o repositório.
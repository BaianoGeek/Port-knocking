# Script de Port Knocking

Este é um script em Bash que pode ser usado para realizar a técnica de "Port Knocking" em uma rede local.

## Descrição

A técnica de "Port Knocking" envolve enviar uma sequência específica de pacotes para determinadas portas em um servidor, a fim de abrir uma porta que normalmente está fechada. Este script simplificado envia pacotes SYN para a porta 80 de uma série de endereços IP na rede local.

## Como Usar

1 - Crie um arquivo "parsing.sh"

```
nano knock.sh
```
2 - Certifique-se de ter permissões de execução no script:

```
chmod +x knock.sh
```
3 - Execute o Script: (Isso iniciará a técnica de "Port Knocking" na sub-rede 192.168.0.)
```
./knock.sh 192.168.0
```

## Comportamento do Script

- O script verifica se foi fornecido um argumento ao ser executado. Se nenhum argumento for fornecido, ele exibe uma mensagem de uso com informações sobre como usar o script.

- Se um argumento for fornecido (o endereço IP inicial da rede), o script itera por todos os endereços IP baseados na lista insformado em um arquivo chamado lista na sub-rede especificada.

- Para cada endereço IP na sub-rede, o script envia um único pacote SYN para a porta 80 usando o utilitário hping3.

- A saída do hping3 é redirecionada para /dev/null, suprimindo qualquer mensagem de saída.

## Observações de Uso

- Certifique-se de ter as permissões adequadas para executar este script. Você pode precisar usar o comando sudo dependendo das configurações do seu sistema.

- Tenha em mente que a técnica de "Port Knocking" pode ser usada para fins de segurança, mas também pode ser usada de forma maliciosa. Certifique-se de compreender as implicações de segurança ao usar essa técnica em sua rede.

- Este script é uma implementação simplificada da técnica de "Port Knocking" e pode não ser adequado para todos os cenários de uso. Considere utilizar soluções mais robustas e seguras, dependendo dos requisitos de segurança da sua rede.

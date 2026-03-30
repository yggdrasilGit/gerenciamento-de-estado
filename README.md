# App de Loja com Carrinho (Flutter + Provider)

## Sobre o projeto

Este projeto foi desenvolvido com o objetivo de demonstrar, na prática, o conceito de **gerenciamento de estado no Flutter** utilizando o pacote **Provider**.

O aplicativo simula uma loja simples, onde o usuário pode:

* Visualizar produtos
* Adicionar itens ao carrinho
* Remover itens do carrinho

---

## Objetivo da aula

Ensinar como funciona a gestão de estado no Flutter, comparando abordagens simples (`setState`) com soluções mais escaláveis como o Provider.

---

## Conceitos abordados

* Estado (State)
* Atualização da interface
* ChangeNotifier
* notifyListeners()
* Provider
* Separação de responsabilidades

---

## Estrutura do projeto

```
lib/
 ├── main.dart
 ├── carrinho.dart
 ├── tela_loja.dart
 └── tela_carrinho.dart
```

---

## Dependências

Adicione no `pubspec.yaml`:

```
provider: ^6.0.5
```

---

## Funcionamento do app

### Fluxo principal:

1. Usuário adiciona um produto
2. O método `adicionar()` é chamado
3. `notifyListeners()` é executado
4. A interface é atualizada automaticamente

---

## Código principal

### Estado (Carrinho)

```dart
class Carrinho extends ChangeNotifier {
  List<String> itens = [];

  void adicionar(String produto) {
    itens.add(produto);
    notifyListeners();
  }

  void remover(String produto) {
    itens.remove(produto);
    notifyListeners();
  }
}
```

---

### Provider no main

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Carrinho(),
      child: MeuApp(),
    ),
  );
}
```

---

### Tela da Loja

* Lista de produtos
* Botão para adicionar ao carrinho
* Contador de itens no topo

---

### Tela do Carrinho

* Lista de itens adicionados
* Botão para remover produtos

---

## Por que não usar apenas setState?

O `setState` funciona apenas localmente.

Problemas:

* Não compartilha estado entre telas
* Difícil de escalar
* Código menos organizado

---

## Vantagens do Provider

* Estado global compartilhado
* Atualização automática da interface
* Código mais limpo e organizado
* Fácil manutenção

---

## Quando usar

| Situação             | Solução  |
| -------------------- | -------- |
| Estado simples       | setState |
| Estado compartilhado | Provider |

---

## Como executar

```bash
flutter pub get
flutter run
```

---

## Referências

* [https://docs.flutter.dev/](https://docs.flutter.dev/)
* [https://docs.flutter.dev/development/data-and-backend/state-mgmt](https://docs.flutter.dev/development/data-and-backend/state-mgmt)
* [https://pub.dev/packages/provider](https://pub.dev/packages/provider)

---

## Uso em aula

Este projeto é ideal para:

* Introdução à gestão de estado
* Demonstração prática com Flutter
* Comparação entre setState e Provider

---

## Possíveis melhorias

* Adicionar preços aos produtos
* Calcular total da compra
* Melhorar o design (UI)
* Persistência de dados

---

## Conclusão

O Provider é uma solução simples e poderosa para gerenciamento de estado no Flutter, sendo ideal para aplicações de pequeno e médio porte.

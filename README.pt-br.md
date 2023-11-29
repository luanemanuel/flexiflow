<p align="center">
<img src="https://raw.githubusercontent.com/luanemanuel/flexiflow/master/assets/logo.png" width="350" alt="Flexiflow Package"/>
</p>

<p align="center">
	<a href="https://pub.dev/packages/flexiflow"><img src="https://img.shields.io/pub/v/flexiflow.svg" alt="Pub.dev Badge"></a>
	<a href="https://github.com/luanemanuel/flexiflow/actions"><img src="https://github.com/luanemanuel/flexiflow/workflows/test/badge.svg" alt="GitHub Build Badge"></a>
	<a href="https://github.com/tenhobi/effective_dart"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="Effective Dart Badge"></a>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
	<a href="https://github.com/luanemanuel/focus_on_it/"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>
</p>

<p align="center" style="text-align: center;">
<img src="https://img.shields.io/badge/web-✔-brightgreen.svg" alt="Web Badge">
<img src="https://img.shields.io/badge/android-✔-brightgreen.svg" alt="Android Badge">
<img src="https://img.shields.io/badge/ios-✔-brightgreen.svg" alt="iOS Badge">
<img src="https://img.shields.io/badge/macos-✔-brightgreen.svg" alt="MacOS Badge">
<img src="https://img.shields.io/badge/windows-✔-brightgreen.svg" alt="Windows Badge">
<img src="https://img.shields.io/badge/linux-✔-brightgreen.svg" alt="Linux Badge">
</p>
<br>

<h4 align="center">
Idiomas disponíveis
</h4>

<p align="center">
    <a href="https://github.com/luanemanuel/flexiflow/blob/master/README.md"><img src="https://raw.githubusercontent.com/luanemanuel/flexiflow/master/assets/en_us/en_us.png" alt="English Version" style="width: 50px; height: 50px;"/></a>
    <a href="https://github.com/luanemanuel/flexiflow/blob/master/README.pt-br.md"><img src="https://raw.githubusercontent.com/luanemanuel/flexiflow/master/assets/pt_br/pt_br.png" alt="Versão em Português" style="width: 50px; height: 50px;"/></a>
</p>

<br>

O Flexiflow é uma biblioteca que possibilita a criação de fluxos responsivos em seu aplicativo, oferecendo variações
adaptáveis para diversos tipos de dispositivos e telas.

## Sobre

O Flexiflow baseia-se na ideia de empregar um design base como ponto de referência para a criação de fluxos responsivos.
A partir desse design fundamental, a biblioteca possibilita a geração de variações adaptáveis para distintos
dispositivos, como celulares, tablets e desktops. Além disso, o Flexiflow ajusta o tamanho dos widgets de acordo com
diferentes tamanhos de tela, mantendo constante a proporção em relação ao design original.

Com o Flexiflow, você ganha a capacidade de desenvolver facilmente um fluxo responsivo para seu aplicativo, eliminando a
necessidade de cálculos complexos e aprimorando a legibilidade do código. A flexibilidade da biblioteca permite criar
variações específicas para cada tipo de dispositivo, resultando em um fluxo responsivo que se adapta de maneira
eficiente a uma variedade de tamanhos de tela. Isso contribui para uma experiência única do usuário, ajustada de forma
otimizada para cada dispositivo.

## Instalação

Para instalar o Flexiflow, adicione a dependência abaixo em seu arquivo `pubspec.yaml`:

```yaml
dependencies:
  flexiflow: ^VERSION
```

Altere a tag `VERSION` para a versão mais recente do pacote. Você pode encontrar a versão mais recente do Flexiflow
na [página do pacote no Pub.dev](https://pub.dev/packages/flexiflow).

Após isso, rode o comando `flutter pub get` para baixar as dependências do projeto.

Agora é só importar o Flexiflow em seu projeto e começar a aproveitar os benefícios de uma responsividade simples e
rápida:

```dart
import 'package:flexiflow/flexiflow.dart';
```

## Utilização

O Flexiflow é segmentado em duas partes distintas: "Flexi" e "Flow". A denominação "Flexi" deriva da flexibilidade, e
esta se encarrega de conferir responsividade aos seus widgets. Enquanto isso, a parcela "Flow", originada da palavra
fluxo, assume a responsabilidade de criar variações adaptadas para os diversos tipos de dispositivos.

### Responsividade

Para tornar seus widgets responsivos, o primeiro passo é incorporar o widget `Flexiflow` em seu aplicativo.
O `Flexiflow` desempenha o papel crucial de estabelecer o design base para sua aplicação, servindo como ponto de
referência para a criação de fluxos responsivos. Para essa configuração inicial, basta fornecer as dimensões do design
base por meio do parâmetro `designSize`:

```dart
void main() {
  runApp(
    FlexiFlow(
      designSize: Size(1920, 1080),
      child: const MyApp(),
    ),
  );
}
```

Após essa etapa, é possível conferir responsividade aos seus widgets por meio das extensões disponibilizadas pelo
pacote. Para isso, basta empregar a variável correspondente ao tipo de responsividade desejado, atribuindo a ela um
valor numérico:

```dart
final double width = 100.w;
final double height = 100.h;
final double fontSize = 100.sp;
```

O Flexiflow oferece sete tipos distintos de responsividade, cada um ajustando-se de maneira específica:

- **`w` ou `width`**: Responsivo à largura do design base.
- **`h` ou `height`**: Responsivo à altura do design base.
- **`sp`**: Responsivo ao tamanho da fonte do design base.
- **`dp`**: Responsivo à densidade de pixels do dispositivo.
- **`wPerc` ou `widthPercentage`**: Responsivo à porcentagem da largura do design base.
- **`hPerc` ou `heightPercentage`**: Responsivo à porcentagem da altura do design base.
- **`sqr` ou `squared`**: Responsivo à menor dimensão do design base, frequentemente utilizado para criar widgets
  quadrados.

Além disso, o Flexiflow oferece a flexibilidade de definir limites mínimo e máximo para a responsividade por meio dos
parâmetros `min` e `max`:

```dart
final double width = 100.limW(min: 50, max: 200);
final double height = 100.limH(min: 50, max: 200);
final double fontSize = 100.limSp(min: 50, max: 200);
```

Isso é especialmente útil para evitar que os valores de responsividade se tornem excessivamente pequenos ou grandes,
proporcionando assim uma melhor experiência para o usuário.

Os parâmetros opcionais `min` e `max` podem ser aplicados nas seguintes extensões:

- **`limW` ou `limitedWidth`**: Limita a responsividade em relação à largura do design base.
- **`limH` ou `limitedHeight`**: Estabelece limites para a responsividade em relação à altura do design base.
- **`limSp` ou `limitedSp`**: Define limites para a responsividade em relação ao tamanho da fonte do design base.
- **`limDp` ou `limitedDp`**: Controla a responsividade em relação à densidade de pixels do dispositivo.
- **`limWPerc` ou `limitedWidthPercentage`**: Impõe limites para a responsividade em relação à porcentagem da largura do
  design base.
- **`limHPerc` ou `limitedHeightPercentage`**: Regula a responsividade em relação à porcentagem da altura do design base.
- **`limSqr` ou `limitedSquared`**: Aplica limites à responsividade em relação à menor dimensão do design base,
  frequentemente utilizado para manter widgets em formato quadrado.

### Fluxo

Para criar variações adaptadas a diferentes tipos de dispositivos, o widget `FlowScreen` é a ferramenta ideal. Este
widget assume a responsabilidade de gerar variantes específicas para celulares, tablets e desktops, proporcionando uma
experiência otimizada em cada plataforma.

```dart
FlowScreen(
  mobileChild: const MobileScreen(),
  tabletChild: const TabletScreen(),
  desktopChild: const DesktopScreen(),
),
```

Se desejar criar variações personalizadas além das oferecidas pelo `FlowScreen`, a interface `IFlow` oferece a
flexibilidade necessária. Para implementar seu próprio fluxo, basta criar uma classe que estenda a interface `IFlow` e
fazer a sobrescrição dos métodos `getCurrentFlow` e `getCurrentType`.

```dart
class CustomFlow extends IFlow<DevicesTypes> {

  CustomFlow({
    required BuildContext context,
    required Widget mobileChild,
    required Widget tabletChild,
    required Widget desktopChild,
  })
      : _context = context,
        _mobileChild = mobileChild,
        _tabletChild = tabletChild,
        _desktopChild = desktopChild;

  final BuildContext _context;
  final Widget _mobileChild;
  final Widget _tabletChild;
  final Widget _desktopChild;

  @override
  Widget getCurrentFlow(DevicesTypes type) {
    return switch (type) {
      DevicesTypes.mobile => _mobileChild,
      DevicesTypes.tablet => _tabletChild,
      DevicesTypes.desktop => _desktopChild
    };
  }

  @override
  DevicesTypes getCurrentType() {
    final size = MediaQuery.sizeOf(_context);
    if (size.width < 600) {
      return DevicesTypes.mobile;
    } else if (size.width < 1024) {
      return DevicesTypes.tablet;
    } else {
      return DevicesTypes.desktop;
    }
  }
```

Após criar sua classe personalizada que estende a interface `IFlow`, é simples integrá-la ao `FlowBuilder`. Basta passar
a instância dessa classe como argumento para o parâmetro `flow` do `FlowBuilder`:

```dart
FlowBuilder(
  flow: CustomFlow(
    context: context,
    mobileChild: const MobileScreen(),
    tabletChild: const TabletScreen(),
    desktopChild: const DesktopScreen(),
  ),
),
```

Lembre-se de que a personalização do seu fluxo pode ser feita de maneira bastante flexível, permitindo até mesmo que o
usuário faça suas próprias customizações.

## Exemplos

Para visualizar exemplos práticos de utilização do Flexiflow, acesse o
nosso [Laboratório de Fluxos](https://github.com/luanemanuel/flexiflow/tree/master/example).

## Contribuição

Contribuições são sempre bem-vindas! Se deseja contribuir com o Flexiflow, sinta-se à vontade para acessar
nosso [repositório no GitHub](https://github.com/luanemanuel/flexiflow/).

## Bugs e Sugestões

Você pode relatar bugs e sugerir novas funcionalidades em nossa seção
de [issues](https://github.com/luanemanuel/flexiflow/issues).

## Licença

O Flexiflow é licenciado sob a licença MIT. Veja o
arquivo [LICENSE](https://github.com/luanemanuel/flexiflow/blob/master/LICENSE) para mais detalhes.

## Agradecimentos

Agradecemos a **Arthur Goelzer** pelas contribuições artísticas utilizadas no README do projeto.
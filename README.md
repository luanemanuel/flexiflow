<p align="center">
<img src="https://github.com/luanemanuel/flexiflow/blob/master/assets/logo.png?raw=true" width="350" alt="Flexiflow Package"/>
</p>

<br>

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


<h4 align="center">
Available Languages
</h4>

<p align="center">
    <a href="https://github.com/luanemanuel/flexiflow/blob/master/README.md"><img src="https://github.com/luanemanuel/flexiflow/blob/master/assets/en_us/en_us.png" alt="English Version"/></a>
    <a href="https://github.com/luanemanuel/flexiflow/blob/master/README.pt-br.md"><img src="https://github.com/luanemanuel/flexiflow/blob/master/assets/pt_br/pt_br.png" alt="Versão em Português"/></a>
</p>

<br>

Flexiflow is a library that enables the creation of responsive flows in your application, providing adaptable variations for various types of devices and screens.

## About

Flexiflow is based on the idea of employing a foundational design as a reference point for creating responsive flows. From this fundamental design, the library enables the generation of adaptable variations for different devices such as mobile phones, tablets, and desktops. Additionally, Flexiflow adjusts the size of widgets according to various screen sizes, maintaining a constant proportion to the original design.

With Flexiflow, you gain the ability to easily develop a responsive flow for your application, eliminating the need for complex calculations and enhancing code readability. The flexibility of the library allows you to create specific variations for each type of device, resulting in a responsive flow that efficiently adapts to a variety of screen sizes. This contributes to a unique user experience, optimally tailored for each device.


## Installation

To install Flexiflow, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flexiflow: ^VERSION
```

Replace the `VERSION` tag with the latest version of the package. You can find the most recent version of Flexiflow on the [package page on Pub.dev](https://pub.dev/packages/flexiflow).

After that, run the `flutter pub get` command to download the project dependencies.

Now, simply import Flexiflow into your project and start enjoying the benefits of simple and fast responsiveness:


```dart
import 'package:flexiflow/flexiflow.dart';
```

## Usage

Flexiflow is divided into two distinct parts: "Flexi" and "Flow". The term "Flexi" comes from flexibility, and it is responsible for providing responsiveness to your widgets. Meanwhile, the "Flow" portion, derived from the word flow, takes on the responsibility of creating variations tailored to various types of devices.

### Responsiveness

To make your widgets responsive, the first step is to incorporate the `Flexiflow` widget into your application. The `Flexiflow` plays a crucial role in establishing the foundational design for your application, serving as a reference point for creating responsive flows. For this initial setup, simply provide the dimensions of the foundational design through the `designSize` parameter:


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

After this step, you can make your widgets responsive using the extensions provided by the package. To do this, simply use the variable corresponding to the desired type of responsiveness, assigning a numeric value to it:


```dart
final double width = 100.w;
final double height = 100.h;
final double fontSize = 100.sp;
```

Flexiflow offers seven distinct types of responsiveness, each adjusting in a specific way:

- **`w` or `width`**: Responsive to the width of the foundational design.
- **`h` or `height`**: Responsive to the height of the foundational design.
- **`sp`**: Responsive to the font size of the foundational design.
- **`dp`**: Responsive to the device's pixel density.
- **`wPerc` or `widthPercentage`**: Responsive to the percentage of the foundational design's width.
- **`hPerc` or `heightPercentage`**: Responsive to the percentage of the foundational design's height.
- **`sqr` or `squared`**: Responsive to the smaller dimension of the foundational design, often used to create square widgets.

Additionally, Flexiflow provides the flexibility to set minimum and maximum limits for responsiveness through the `min` and `max` parameters:

```dart
final double width = 100.limW(min: 50, max: 200);
final double height = 100.limH(min: 50, max: 200);
final double fontSize = 100.limSp(min: 50, max: 200);
```

This is especially useful to prevent responsiveness values from becoming excessively small or large, thus providing a better user experience.

The optional `min` and `max` parameters can be applied to the following extensions:

- **`limW` or `limitedWidth`**: Limits responsiveness in relation to the width of the foundational design.
- **`limH` or `limitedHeight`**: Establishes limits for responsiveness in relation to the height of the foundational design.
- **`limSp` or `limitedSp`**: Sets limits for responsiveness in relation to the font size of the foundational design.
- **`limDp` or `limitedDp`**: Controls responsiveness in relation to the device's pixel density.
- **`limWPerc` or `limitedWidthPercentage`**: Imposes limits on responsiveness in relation to the percentage of the foundational design's width.
- **`limHPerc` or `limitedHeightPercentage`**: Regulates responsiveness in relation to the percentage of the foundational design's height.
- **`limSqr` or `limitedSquared`**: Applies limits to responsiveness in relation to the smaller dimension of the foundational design, often used to maintain widgets in a square format.


### Flow

To create variations tailored to different types of devices, the `FlowScreen` widget is the ideal tool. This widget takes on the responsibility of generating specific variants for mobile phones, tablets, and desktops, providing an optimized experience on each platform.

```dart
FlowScreen(
    mobileChild: const MobileScreen(),
    tabletChild: const TabletScreen(),
    desktopChild: const DesktopScreen(),
),
```

If you want to create custom variations beyond those offered by `FlowScreen`, the `IFlow` interface provides the necessary flexibility. To implement your own flow, simply create a class that extends the `IFlow` interface and override the `getCurrentFlow` and `getCurrentType` methods.

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

After creating your custom class that extends the `IFlow` interface, it's easy to integrate it into the `FlowBuilder`. Simply pass an instance of this class as an argument to the `flow` parameter of the `FlowBuilder`:

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

Remember that customizing your flow can be done in a very flexible manner, allowing even the user to make their own customizations.

## Examples

To view practical examples of Flexiflow usage, visit our [Flow Lab](https://github.com/luanemanuel/flexiflow/tree/master/example).

## Contributing

Contribuições são sempre bem-vindas! Se deseja contribuir com o Flexiflow, sinta-se à vontade para acessar
nosso [repositório no GitHub](https://github.com/luanemanuel/flexiflow/).

## Bugs and Suggestions

Contributions are always welcome! If you'd like to contribute to Flexiflow, feel free to visit our [GitHub repository](https://github.com/luanemanuel/flexiflow/).

## License

Flexiflow is licensed under the MIT License. See the [LICENSE](https://github.com/luanemanuel/flexiflow/blob/master/LICENSE) file for more details.

## Acknowledgements

- We thank **Arthur Goelzer** for the artistic contributions used in the project's README.

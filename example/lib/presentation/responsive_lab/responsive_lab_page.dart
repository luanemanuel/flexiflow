import 'package:flexiflow/flexiflow.dart';
import 'package:flexiflow_example/presentation/responsive_lab/responsive_types.dart';
import 'package:flexiflow_example/presentation/responsive_lab/size_changer.dart';
import 'package:flutter/material.dart';

class ResponsiveLabPage extends StatefulWidget {
  const ResponsiveLabPage({
    super.key,
  });

  @override
  State<ResponsiveLabPage> createState() => _ResponsiveLabPageState();
}

class _ResponsiveLabPageState extends State<ResponsiveLabPage> {
  late bool isResponsiveEnabled;
  late ResponsiveTypes responsiveType;

  late double width;
  late double height;
  late double square;
  late double percentWidth;
  late double percentHeight;

  late double maxWidth;
  late double maxHeight;
  late double maxSquare;
  late double maxPercentWidth;
  late double maxPercentHeight;
  late double maxLimitedPercentWidth;

  late double minWidth;
  late double minHeight;
  late double minSquare;
  late double minPercentWidth;
  late double minPercentHeight;
  late double minLimitedPercentWidth;

  late TextEditingController widthController;
  late TextEditingController heightController;
  late TextEditingController squareController;
  late TextEditingController percentWidthController;
  late TextEditingController percentHeightController;

  late TextEditingController maxWidthController;
  late TextEditingController maxHeightController;
  late TextEditingController maxSquareController;
  late TextEditingController maxPercentWidthController;
  late TextEditingController maxPercentHeightController;
  late TextEditingController maxLimitedPercentWidthController;

  late TextEditingController minWidthController;
  late TextEditingController minHeightController;
  late TextEditingController minSquareController;
  late TextEditingController minPercentWidthController;
  late TextEditingController minPercentHeightController;
  late TextEditingController minLimitedPercentWidthController;

  @override
  void initState() {
    super.initState();
    isResponsiveEnabled = false;
    responsiveType = ResponsiveTypes.square;

    width = 50;
    height = 50;
    square = 50;
    percentWidth = 50;
    percentHeight = 50;

    maxWidth = 350;
    maxHeight = 350;
    maxSquare = 350;
    maxPercentWidth = 100;
    maxPercentHeight = 100;
    maxLimitedPercentWidth = 100;

    minWidth = 0;
    minHeight = 0;
    minSquare = 0;
    minPercentWidth = 0;
    minPercentHeight = 0;
    minLimitedPercentWidth = 0;

    widthController = TextEditingController(text: width.toStringAsFixed(2));
    heightController = TextEditingController(text: height.toStringAsFixed(2));
    squareController = TextEditingController(text: square.toStringAsFixed(2));
    percentWidthController =
        TextEditingController(text: percentWidth.toStringAsFixed(2));
    percentHeightController =
        TextEditingController(text: percentHeight.toStringAsFixed(2));

    maxWidthController =
        TextEditingController(text: maxWidth.toStringAsFixed(2));
    maxHeightController =
        TextEditingController(text: maxHeight.toStringAsFixed(2));
    maxSquareController =
        TextEditingController(text: maxSquare.toStringAsFixed(2));
    maxPercentWidthController =
        TextEditingController(text: maxPercentWidth.toStringAsFixed(2));
    maxPercentHeightController =
        TextEditingController(text: maxPercentHeight.toStringAsFixed(2));
    maxLimitedPercentWidthController =
        TextEditingController(text: maxLimitedPercentWidth.toStringAsFixed(2));

    minWidthController =
        TextEditingController(text: minWidth.toStringAsFixed(2));
    minHeightController =
        TextEditingController(text: minHeight.toStringAsFixed(2));
    minSquareController =
        TextEditingController(text: minSquare.toStringAsFixed(2));
    minPercentWidthController =
        TextEditingController(text: minPercentWidth.toStringAsFixed(2));
    minPercentHeightController =
        TextEditingController(text: minPercentHeight.toStringAsFixed(2));
    minLimitedPercentWidthController =
        TextEditingController(text: minLimitedPercentWidth.toStringAsFixed(2));
  }

  double getHeight() {
    switch (responsiveType) {
      case ResponsiveTypes.square:
      case ResponsiveTypes.limitedSquare:
        return square.limSqr(
          max: responsiveType == ResponsiveTypes.square ? null : maxSquare,
          min: responsiveType == ResponsiveTypes.square ? null : minSquare,
        );
      case ResponsiveTypes.percentHeightAndWidth:
      case ResponsiveTypes.limitedPercentHeightAndWidth:
        return percentHeight.limHPerc(
          max: responsiveType == ResponsiveTypes.percentHeightAndWidth
              ? null
              : maxPercentHeight,
          min: responsiveType == ResponsiveTypes.percentHeightAndWidth
              ? null
              : minPercentHeight,
        );
      case ResponsiveTypes.limitedSp:
      case ResponsiveTypes.sp:
        return height.limSp(
          max: responsiveType == ResponsiveTypes.sp ? null : maxHeight,
          min: responsiveType == ResponsiveTypes.sp ? null : minHeight,
        );
      case ResponsiveTypes.dp:
      case ResponsiveTypes.limitedDp:
        return height.limDp(
          max: responsiveType == ResponsiveTypes.dp ? null : maxHeight,
          min: responsiveType == ResponsiveTypes.dp ? null : minHeight,
        );
      case ResponsiveTypes.heightAndWidth:
      case ResponsiveTypes.limitedHeightAndWidth:
        return height.limH(
          max: responsiveType == ResponsiveTypes.heightAndWidth
              ? null
              : maxHeight,
          min: responsiveType == ResponsiveTypes.heightAndWidth
              ? null
              : minHeight,
        );
      default:
        return 0;
    }
  }

  double getWidth() {
    switch (responsiveType) {
      case ResponsiveTypes.square:
      case ResponsiveTypes.limitedSquare:
        return square.limSqr(
          max: responsiveType == ResponsiveTypes.square ? null : maxSquare,
          min: responsiveType == ResponsiveTypes.square ? null : minSquare,
        );
      case ResponsiveTypes.percentHeightAndWidth:
      case ResponsiveTypes.limitedPercentHeightAndWidth:
        return percentWidth.limWPerc(
          max: responsiveType == ResponsiveTypes.percentHeightAndWidth
              ? null
              : maxPercentWidth,
          min: responsiveType == ResponsiveTypes.percentHeightAndWidth
              ? null
              : minPercentWidth,
        );
      case ResponsiveTypes.limitedSp:
      case ResponsiveTypes.sp:
        return width.limSp(
          max: responsiveType == ResponsiveTypes.sp ? null : maxWidth,
          min: responsiveType == ResponsiveTypes.sp ? null : minWidth,
        );
      case ResponsiveTypes.dp:
      case ResponsiveTypes.limitedDp:
        return width.limDp(
          max: responsiveType == ResponsiveTypes.dp ? null : maxWidth,
          min: responsiveType == ResponsiveTypes.dp ? null : minWidth,
        );
      case ResponsiveTypes.heightAndWidth:
      case ResponsiveTypes.limitedHeightAndWidth:
        return width.limW(
          max: responsiveType == ResponsiveTypes.heightAndWidth
              ? null
              : maxWidth,
          min: responsiveType == ResponsiveTypes.heightAndWidth
              ? null
              : minWidth,
        );
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text('Responsive Laboratory'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: SizedBox(
                    width: 50.w,
                    child: SwitchListTile(
                      value: isResponsiveEnabled,
                      onChanged: (value) {
                        setState(() {
                          isResponsiveEnabled = value;
                        });
                      },
                      title: Text('Enable Responsive'),
                    ),
                  ),
                ),
                if (isResponsiveEnabled)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.primary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              DropdownButton<ResponsiveTypes>(
                                value: responsiveType,
                                onChanged: (type) {
                                  if (type == null) return;
                                  setState(() {
                                    responsiveType = type;
                                  });
                                },
                                items: ResponsiveTypes.values.map((e) {
                                  return DropdownMenuItem<ResponsiveTypes>(
                                    value: e,
                                    child: Text(e.getName()),
                                  );
                                }).toList(),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Width Size',
                                  ),
                                  SizeChanger(
                                    controller: switch (responsiveType) {
                                      ResponsiveTypes.square ||
                                      ResponsiveTypes.limitedSquare =>
                                        squareController,
                                      ResponsiveTypes.percentHeightAndWidth ||
                                      ResponsiveTypes
                                            .limitedPercentHeightAndWidth =>
                                        percentWidthController,
                                      ResponsiveTypes.limitedSp ||
                                      ResponsiveTypes.sp ||
                                      ResponsiveTypes.dp ||
                                      ResponsiveTypes.limitedDp ||
                                      ResponsiveTypes.heightAndWidth ||
                                      ResponsiveTypes.limitedHeightAndWidth =>
                                        widthController,
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        if (value.isEmpty) return;
                                        final newValue = double.parse(value);
                                        switch (responsiveType) {
                                          case ResponsiveTypes.square:
                                          case ResponsiveTypes.limitedSquare:
                                            square = newValue > maxSquare
                                                ? maxSquare
                                                : newValue < minSquare
                                                    ? minSquare
                                                    : newValue;
                                            squareController.text =
                                                square.toStringAsFixed(2);
                                            break;
                                          case ResponsiveTypes
                                                .percentHeightAndWidth:
                                          case ResponsiveTypes
                                                .limitedPercentHeightAndWidth:
                                            percentWidth =
                                                newValue > maxPercentWidth
                                                    ? maxPercentWidth
                                                    : newValue < minPercentWidth
                                                        ? minPercentWidth
                                                        : newValue;
                                            percentWidthController.text =
                                                percentWidth.toStringAsFixed(2);
                                            break;
                                          case ResponsiveTypes.limitedSp:
                                          case ResponsiveTypes.sp:
                                          case ResponsiveTypes.dp:
                                          case ResponsiveTypes.limitedDp:
                                          case ResponsiveTypes.heightAndWidth:
                                          case ResponsiveTypes
                                                .limitedHeightAndWidth:
                                            width = newValue > maxWidth
                                                ? maxWidth
                                                : newValue < minWidth
                                                    ? minWidth
                                                    : newValue;
                                            widthController.text =
                                                width.toStringAsFixed(2);
                                            break;
                                          default:
                                            break;
                                        }
                                      });
                                    },
                                    value: switch (responsiveType) {
                                      ResponsiveTypes.square ||
                                      ResponsiveTypes.limitedSquare =>
                                        square.toStringAsFixed(2),
                                      ResponsiveTypes.percentHeightAndWidth ||
                                      ResponsiveTypes
                                            .limitedPercentHeightAndWidth =>
                                        percentWidth.toStringAsFixed(2),
                                      ResponsiveTypes.limitedSp ||
                                      ResponsiveTypes.sp ||
                                      ResponsiveTypes.dp ||
                                      ResponsiveTypes.limitedDp ||
                                      ResponsiveTypes.heightAndWidth ||
                                      ResponsiveTypes.limitedHeightAndWidth =>
                                        width.toStringAsFixed(2),
                                    },
                                    type: responsiveType,
                                  ),
                                  if (responsiveType !=
                                          ResponsiveTypes.square &&
                                      responsiveType !=
                                          ResponsiveTypes.limitedSquare)
                                    SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Height Size',
                                          ),
                                          SizeChanger(
                                            controller: switch (
                                                responsiveType) {
                                              ResponsiveTypes.square ||
                                              ResponsiveTypes.limitedSquare =>
                                                squareController,
                                              ResponsiveTypes
                                                  .percentHeightAndWidth ||
                                              ResponsiveTypes
                                                    .limitedPercentHeightAndWidth =>
                                                percentHeightController,
                                              ResponsiveTypes.limitedSp ||
                                              ResponsiveTypes.sp ||
                                              ResponsiveTypes.dp ||
                                              ResponsiveTypes.limitedDp ||
                                              ResponsiveTypes.heightAndWidth ||
                                              ResponsiveTypes
                                                    .limitedHeightAndWidth =>
                                                heightController,
                                            },
                                            onChanged: (value) {
                                              setState(() {
                                                if (value.isEmpty) return;
                                                final newValue =
                                                    double.parse(value);
                                                switch (responsiveType) {
                                                  case ResponsiveTypes
                                                        .percentHeightAndWidth:
                                                  case ResponsiveTypes
                                                        .limitedPercentHeightAndWidth:
                                                    percentHeight = newValue >
                                                            maxPercentHeight
                                                        ? maxPercentHeight
                                                        : newValue <
                                                                minPercentHeight
                                                            ? minPercentHeight
                                                            : newValue;
                                                    percentHeightController
                                                            .text =
                                                        percentHeight
                                                            .toStringAsFixed(2);
                                                    break;
                                                  case ResponsiveTypes
                                                        .limitedSp:
                                                  case ResponsiveTypes.sp:
                                                  case ResponsiveTypes.dp:
                                                  case ResponsiveTypes
                                                        .limitedDp:
                                                  case ResponsiveTypes
                                                        .heightAndWidth:
                                                  case ResponsiveTypes
                                                        .limitedHeightAndWidth:
                                                    height = newValue >
                                                            maxHeight
                                                        ? maxHeight
                                                        : newValue < minHeight
                                                            ? minHeight
                                                            : newValue;
                                                    heightController.text =
                                                        height
                                                            .toStringAsFixed(2);
                                                    break;
                                                  default:
                                                    break;
                                                }
                                              });
                                            },
                                            value: switch (responsiveType) {
                                              ResponsiveTypes
                                                  .percentHeightAndWidth ||
                                              ResponsiveTypes
                                                    .limitedPercentHeightAndWidth =>
                                                percentHeight
                                                    .toStringAsFixed(2),
                                              ResponsiveTypes.limitedSp ||
                                              ResponsiveTypes.sp ||
                                              ResponsiveTypes.dp ||
                                              ResponsiveTypes.limitedDp ||
                                              ResponsiveTypes.heightAndWidth ||
                                              ResponsiveTypes
                                                    .limitedHeightAndWidth =>
                                                height.toStringAsFixed(2),
                                              _ => '0',
                                            },
                                            type: responsiveType,
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (responsiveType ==
                                          ResponsiveTypes
                                              .limitedPercentHeightAndWidth ||
                                      responsiveType ==
                                          ResponsiveTypes
                                              .limitedHeightAndWidth ||
                                      responsiveType ==
                                          ResponsiveTypes.limitedSquare ||
                                      responsiveType ==
                                          ResponsiveTypes.limitedSp ||
                                      responsiveType ==
                                          ResponsiveTypes.limitedDp)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Max Width Size',
                                        ),
                                        SizeChanger(
                                          controller: switch (responsiveType) {
                                            ResponsiveTypes
                                                  .limitedPercentHeightAndWidth =>
                                              maxLimitedPercentWidthController,
                                            ResponsiveTypes
                                                  .limitedHeightAndWidth =>
                                              maxWidthController,
                                            ResponsiveTypes.limitedSquare =>
                                              maxSquareController,
                                            _ => null,
                                          },
                                          onChanged: (value) {
                                            setState(() {
                                              if (value.isEmpty) return;
                                              final newValue =
                                                  double.parse(value);
                                              switch (responsiveType) {
                                                case ResponsiveTypes
                                                      .limitedPercentHeightAndWidth:
                                                  maxLimitedPercentWidth =
                                                      newValue > 350
                                                          ? 350
                                                          : newValue < 0
                                                              ? 0
                                                              : newValue;
                                                  maxLimitedPercentWidthController
                                                          .text =
                                                      maxLimitedPercentWidth
                                                          .toStringAsFixed(2);
                                                  break;
                                                case ResponsiveTypes
                                                      .limitedHeightAndWidth:
                                                  maxWidth = newValue > 350
                                                      ? 350
                                                      : newValue < 0
                                                          ? 0
                                                          : newValue;
                                                  maxWidthController.text =
                                                      maxWidth
                                                          .toStringAsFixed(2);
                                                  break;
                                                case ResponsiveTypes
                                                      .limitedSquare:
                                                  maxSquare = newValue > 350
                                                      ? 350
                                                      : newValue < 0
                                                          ? 0
                                                          : newValue;
                                                  maxSquareController.text =
                                                      maxSquare
                                                          .toStringAsFixed(2);
                                                  break;
                                                default:
                                                  break;
                                              }
                                            });
                                          },
                                          value: switch (responsiveType) {
                                            ResponsiveTypes
                                                  .limitedPercentHeightAndWidth =>
                                              maxLimitedPercentWidth
                                                  .toStringAsFixed(2),
                                            ResponsiveTypes
                                                  .limitedHeightAndWidth =>
                                              maxWidth.toStringAsFixed(2),
                                            ResponsiveTypes.limitedSquare =>
                                              maxSquare.toStringAsFixed(2),
                                            _ => '0',
                                          },
                                          type: responsiveType,
                                        ),
                                        if (responsiveType !=
                                            ResponsiveTypes.square)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Max Height Size',
                                              ),
                                              SizeChanger(
                                                controller: switch (
                                                    responsiveType) {
                                                  ResponsiveTypes
                                                        .limitedPercentHeightAndWidth =>
                                                    minLimitedPercentWidthController,
                                                  ResponsiveTypes
                                                        .limitedHeightAndWidth =>
                                                    minWidthController,
                                                  ResponsiveTypes
                                                        .limitedSquare =>
                                                    minSquareController,
                                                  _ => null,
                                                },
                                                onChanged: (value) {
                                                  setState(() {
                                                    if (value.isEmpty) return;
                                                    final newValue =
                                                        double.parse(value);
                                                    switch (responsiveType) {
                                                      case ResponsiveTypes
                                                            .limitedPercentHeightAndWidth:
                                                        minLimitedPercentWidth =
                                                            newValue > 350
                                                                ? 350
                                                                : newValue < 0
                                                                    ? 0
                                                                    : newValue;
                                                        minLimitedPercentWidthController
                                                                .text =
                                                            minLimitedPercentWidth
                                                                .toStringAsFixed(
                                                                    2);
                                                        break;
                                                      case ResponsiveTypes
                                                            .limitedHeightAndWidth:
                                                        minWidth =
                                                            newValue > 350
                                                                ? 350
                                                                : newValue < 0
                                                                    ? 0
                                                                    : newValue;
                                                        minWidthController
                                                                .text =
                                                            minWidth
                                                                .toStringAsFixed(
                                                                    2);
                                                        break;
                                                      case ResponsiveTypes
                                                            .limitedSquare:
                                                        minSquare =
                                                            newValue > 350
                                                                ? 350
                                                                : newValue < 0
                                                                    ? 0
                                                                    : newValue;
                                                        minSquareController
                                                                .text =
                                                            minSquare
                                                                .toStringAsFixed(
                                                                    2);
                                                        break;
                                                      default:
                                                        break;
                                                    }
                                                  });
                                                },
                                                value: switch (responsiveType) {
                                                  ResponsiveTypes
                                                        .limitedPercentHeightAndWidth =>
                                                    minLimitedPercentWidth
                                                        .toStringAsFixed(2),
                                                  ResponsiveTypes
                                                        .limitedHeightAndWidth =>
                                                    minWidth.toStringAsFixed(2),
                                                  ResponsiveTypes
                                                        .limitedSquare =>
                                                    minSquare
                                                        .toStringAsFixed(2),
                                                  _ => '0',
                                                },
                                                type: responsiveType,
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 50.w,
                        margin: const EdgeInsets.only(
                          left: 24,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.primary,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Real Width',
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  Text(
                                    '${getWidth().toStringAsFixed(2)} px',
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'Real Height',
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                    Text(
                                      '${getHeight().toStringAsFixed(2)} px',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                Container(
                  width: getWidth(),
                  height: getHeight(),
                  color: Colors.red,
                  margin: const EdgeInsets.all(24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

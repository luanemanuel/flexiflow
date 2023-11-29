enum ResponsiveTypes {
  square,
  limitedSquare,
  limitedHeightAndWidth,
  heightAndWidth,
  dp,
  sp,
  limitedDp,
  limitedSp,
  percentHeightAndWidth,
  limitedPercentHeightAndWidth;

  String getName() {
    switch (this) {
      case ResponsiveTypes.square:
        return 'Square';
      case ResponsiveTypes.limitedSquare:
        return 'Limited Square';
      case ResponsiveTypes.limitedHeightAndWidth:
        return 'Limited Height and Width';
      case ResponsiveTypes.heightAndWidth:
        return 'Height and Width';
      case ResponsiveTypes.dp:
        return 'DP';
      case ResponsiveTypes.sp:
        return 'SP';
      case ResponsiveTypes.percentHeightAndWidth:
        return 'Percent Height and Width';
      case ResponsiveTypes.limitedPercentHeightAndWidth:
        return 'Limited Percent Height and Width';
      case ResponsiveTypes.limitedDp:
        return 'Limited DP';
      case ResponsiveTypes.limitedSp:
        return 'Limited SP';
      default:
        return 'Unknown';
    }
  }
}

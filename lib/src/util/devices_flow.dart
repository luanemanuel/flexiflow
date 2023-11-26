import 'package:flexiflow/src/model/devices_types.dart';
import 'package:flexiflow/src/util/iflow.dart';
import 'package:flutter/widgets.dart';

class DeviceFlow extends IFlow<DevicesTypes> {
  DeviceFlow({
    required BuildContext context,
    required Widget mobileChild,
    required Widget tabletChild,
    required Widget desktopChild,
  })  : _context = context,
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
    } else if (size.width < 900) {
      return DevicesTypes.tablet;
    } else {
      return DevicesTypes.desktop;
    }
  }
}

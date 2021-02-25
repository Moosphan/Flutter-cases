import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/data/icons.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_activity_indicator_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_alert_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_button_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_navigation_bar_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_picker_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_refresh_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_slider_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_switch_demo.dart';
import 'package:flutter_cases/demo/topic/cupertino/cupertino_text_field_demo.dart';
import 'package:flutter_cases/demo/topic/material/app_bar_demo.dart';
import 'package:flutter_cases/demo/topic/material/bottom_app_bar_demo.dart';
import 'package:flutter_cases/demo/topic/material/bottom_navigation_demo.dart';
import 'package:flutter_cases/demo/topic/material/bottom_sheet_demo.dart';
import 'package:flutter_cases/demo/topic/material/cards_demo.dart';
import 'package:flutter_cases/demo/topic/material/chip_demo.dart';
import 'package:flutter_cases/demo/topic/material/navigation_drawer.dart';
import 'package:flutter_cases/demo/topic/material/picker_demo.dart';
import 'package:flutter_cases/demo/topic/material/sliders_demo.dart';
import 'package:flutter_cases/demo/topic/material/snackbar_demo.dart';
import 'package:flutter_cases/demo/topic/material/tabs_demo.dart';
import 'package:flutter_cases/demo/topic/state/provider_demo.dart';
import 'package:flutter_cases/demo/topic/state/scoped_model_demo.dart';
import 'package:flutter_cases/demo/topic/widget/button_demo.dart';
import 'package:flutter_cases/demo/topic/widget/click_demo.dart';
import 'package:flutter_cases/demo/topic/widget/divider_demo.dart';
import 'package:flutter_cases/demo/topic/widget/icon_demo.dart';
import 'package:flutter_cases/demo/topic/widget/image_demo.dart';
import 'package:flutter_cases/demo/topic/widget/input_demo.dart';
import 'package:flutter_cases/demo/topic/widget/placeholder_demo.dart';
import 'package:flutter_cases/demo/topic/widget/progress_demo.dart';
import 'package:flutter_cases/demo/topic/widget/text_demo.dart';
import 'package:flutter_cases/demo/topic/widget/toggle_demo.dart';
import 'package:flutter_cases/resource/strings.dart';

/// 路由配置
/// @author moosphon
/// @date 2020/01/29
class RoutesConfiguration {
  static const widgetPage = '/widgets';
  static const demoBase = '/demo';

  static List<BoatRoute> getAllRoutes() =>
      getDemoRoutes() +
      getMaterialRoutes() +
      getCupertinoRoutes() +
      otherRoutes();

  static List<BoatRoute> getDemoRoutes() => [
        BoatRoute(
            category: RouteCategory.demo,
            title: Strings.text,
            path: 'text',
            subtitle: Strings.textDesc,
            icon: Icons.text_format_outlined,
            builder: (_) => const TextDemoPage()),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.icon,
          path: 'icon',
          subtitle: Strings.iconDesc,
          icon: Icons.insert_emoticon_outlined,
          builder: (_) => IconDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.image,
          path: 'image',
          subtitle: Strings.imageDesc,
          icon: Icons.broken_image_outlined,
          builder: (_) => ImageDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.toggle,
          path: 'toggle',
          subtitle: Strings.toggleDesc,
          icon: Icons.check_circle_outline,
          builder: (_) => ToggleDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.button,
          path: 'button',
          subtitle: Strings.buttonDesc,
          icon: Icons.smart_button_outlined,
          builder: (_) => ButtonDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.input,
          path: 'input',
          subtitle: Strings.inputDesc,
          icon: Icons.text_fields_outlined,
          builder: (_) => InputDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.progressBar,
          path: 'progressbar',
          subtitle: Strings.progressBar,
          icon: Icons.radio_button_off_rounded,
          builder: (_) => ProgressBarDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.divider,
          path: 'divider',
          icon: Icons.line_style,
          builder: (_) => DividerDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.placeHolder,
          path: 'place_holder',
          icon: Icons.account_balance_outlined,
          builder: (_) => PlaceHolderDemo(),
        ),
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.click,
          path: 'click',
          icon: Icons.touch_app_outlined,
          builder: (_) => ClickEventDemo(),
        ),
      ];

  static List<BoatRoute> getMaterialRoutes() => [
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.appbar,
          path: 'app-bar',
          icon: GalleryIcons.appbar,
          builder: (_) => AppBarDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.bottomAppbar,
          path: 'bottom-bar',
          icon: GalleryIcons.bottomAppBar,
          builder: (_) => BottomAppBarDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.bottomNav,
          path: 'bottom-nav',
          icon: GalleryIcons.bottomNavigation,
          builder: (_) => BottomNavigationDemo(
              restorationId: 'bottom_navigation_demo',
              type: BottomNavigationDemoType.withLabels),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.bottomSheet,
          path: 'bottom-sheet',
          icon: GalleryIcons.bottomSheets,
          builder: (_) => BottomSheetDemo(
            type: BottomSheetDemoType.modal,
          ),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.cardView,
          path: 'card',
          icon: GalleryIcons.cards,
          builder: (_) => CardsDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.chip,
          path: 'chip',
          icon: GalleryIcons.chips,
          builder: (_) => ChipDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.drawer,
          path: 'drawer',
          icon: GalleryIcons.menu,
          builder: (_) => NavDrawerDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.picker,
          path: 'picker',
          icon: Icons.date_range_outlined,
          builder: (_) => PickerDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.slider,
          path: 'slider',
          icon: GalleryIcons.sliders,
          builder: (_) => SliderDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.snackBar,
          path: 'snack-bar',
          icon: GalleryIcons.snackbar,
          builder: (_) => SnackBarDemo(),
        ),
        BoatRoute(
          category: RouteCategory.material,
          title: Strings.tabs,
          path: 'tabs',
          icon: GalleryIcons.tabs,
          builder: (_) => TabDemo(),
        ),
      ];

  static List<BoatRoute> getCupertinoRoutes() => [
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosIndicator,
          path: 'ios-indicator',
          icon: GalleryIcons.cupertinoProgress,
          builder: (_) => CupertinoProgressIndicatorDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosAlert,
          path: 'ios-alert',
          icon: GalleryIcons.dialogs,
          builder: (_) => CupertinoAlertDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosButton,
          path: 'ios-button',
          icon: GalleryIcons.buttons,
          builder: (_) => CupertinoButtonDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosNavigation,
          path: 'ios-navigation',
          icon: GalleryIcons.bottomSheetPersistent,
          builder: (_) => CupertinoNavigationBarDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosPicker,
          path: 'ios-picker',
          icon: GalleryIcons.event,
          builder: (_) => CupertinoPickerDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosRefresh,
          path: 'ios-refresh',
          icon: GalleryIcons.cupertinoPullToRefresh,
          builder: (_) => CupertinoRefreshControlDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosSlider,
          path: 'ios-slider',
          icon: Icons.straighten_outlined,
          builder: (_) => CupertinoSliderDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosSwitch,
          path: 'ios-switch',
          icon: GalleryIcons.switches,
          builder: (_) => CupertinoSwitchDemo(),
        ),
        BoatRoute(
          category: RouteCategory.cupertino,
          title: Strings.iosInput,
          path: 'ios-input',
          icon: GalleryIcons.textFieldsAlt,
          builder: (_) => CupertinoTextFieldDemo(),
        ),
      ];

  static List<BoatRoute> otherRoutes() => [
        BoatRoute(
          category: RouteCategory.demo,
          title: Strings.state,
          path: 'state-manage',
          icon: Icons.track_changes,
          builder: (_) => ProviderDemoPage(),
        ),
      ];

  Map<String, BoatRoute> getRouteData() {
    return LinkedHashMap<String, BoatRoute>.fromIterable(
      getAllRoutes(),
      key: (dynamic route) => route.path as String,
    );
  }
}

enum RouteCategory {
  demo,
  material,
  cupertino,
  // other samples
}

/// 路由声明
class BoatRoute {
  const BoatRoute({
    @required this.category,
    @required this.title,
    @required this.path,
    this.subtitle,
    this.icon,
    this.builder,
  })  : assert(category != null),
        assert(title != null),
        assert(path != null);

  final RouteCategory category;
  final String path;
  final String title;
  final String subtitle;
  final IconData icon;
  final WidgetBuilder builder;
}

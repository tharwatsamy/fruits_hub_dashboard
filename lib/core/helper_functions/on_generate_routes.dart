import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:fruit_hub_dashboard/features/dashboard/views/dashboard_view.dart';

import '../../features/orders/presentation/views/orders_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());
 case OrdersView.routeName:
      return MaterialPageRoute(builder: (context) => const OrdersView());

    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

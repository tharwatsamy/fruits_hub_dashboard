import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub_dashboard/features/orders/data/models/order_model.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/views/widgets/order_item.dart';

class OrdersItemsListView extends StatelessWidget {
  const OrdersItemsListView({super.key, required this.orderModels});

  final List<OrderModel> orderModels;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderModels.length,
      itemBuilder: (context, index) {
        return OrderItemWidget(orderModel: orderModels[index]);
      },
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/views/widgets/order_item.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/views/widgets/orders_items_list_view.dart';

import '../../../../../core/helper_functions/get_order_dummy_data.dart';
import 'filter_section.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const FilterSection(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: OrdersItemsListView(orderModels: [
            getDummyOrder(),
            getDummyOrder(),
            getDummyOrder(),
            getDummyOrder(),
          ])),
        ],
      ),
    );
  }
}

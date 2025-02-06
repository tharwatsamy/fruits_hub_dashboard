import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/manger/update_order/update_order_cubit.dart';

import '../../../../../core/enums/order_enum.dart';
import '../../../domain/entities/data/models/order_entity.dart';

class OrderActionButtons extends StatelessWidget {
  const OrderActionButtons({
    super.key,
    required this.orderModel,
  });

  final OrderEntity orderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Visibility(
          visible: orderModel.status == OrderStatusEnum.pending,
          child: ElevatedButton(
            onPressed: () {
              context
                  .read<UpdateOrderCubit>()
                  .updateOrder(status: orderModel.status, orderID: orderID);
            },
            child: const Text('Accept'),
          ),
        ),
        Visibility(
          visible: orderModel.status == OrderStatusEnum.pending,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Reject'),
          ),
        ),
        Visibility(
          visible: orderModel.status == OrderStatusEnum.accepted,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Delivered'),
          ),
        ),
      ],
    );
  }
}

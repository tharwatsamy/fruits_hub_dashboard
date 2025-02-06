import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/enums/order_enum.dart';
import '../../../domain/entities/data/models/order_entity.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
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
            onPressed: () {},
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

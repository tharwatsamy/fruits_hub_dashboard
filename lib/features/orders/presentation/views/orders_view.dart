import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/services/get_it_service.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/manger/fetch_ordres/fetch_orders_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helper_functions/get_order_dummy_data.dart';
import '../../domain/repos/orders_repo.dart';
import 'widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});
  static const routeName = 'orders';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchOrdersCubit(
        getIt.get<OrdersRepo>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Orders'),
        ),
        body: const OrdersViewBodyBuilder(),
      ),
    );
  }
}

class OrdersViewBodyBuilder extends StatefulWidget {
  const OrdersViewBodyBuilder({
    super.key,
  });

  @override
  State<OrdersViewBodyBuilder> createState() => _OrdersViewBodyBuilderState();
}

class _OrdersViewBodyBuilderState extends State<OrdersViewBodyBuilder> {
  @override
  void initState() {
    context.read<FetchOrdersCubit>().fetchOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchOrdersCubit, FetchOrdersState>(
      builder: (context, state) {
        if (state is FetchOrdersSuccess) {
          return OrdersViewBody(
            orders: state.orders,
          );
        } else if (state is FetchOrdersFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else {
          return Skeletonizer(
              child: OrdersViewBody(
            orders: [getDummyOrder(), getDummyOrder()],
          ));
        }
      },
    );
  }
}

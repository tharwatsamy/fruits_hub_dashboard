import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/services/get_it_service.dart';
import 'package:fruit_hub_dashboard/features/orders/presentation/manger/fetch_ordres/fetch_orders_cubit.dart';

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
        body: const OrdersViewBody(),
      ),
    );
  }
}

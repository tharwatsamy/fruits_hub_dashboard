import 'package:bloc/bloc.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.ordersRepo) : super(FetchOrdersInitial());
  final OrdersRepo ordersRepo;

  Future<void> fetchOrders() async {
    emit(FetchOrdersLoading());
    final failureOrOrders = await ordersRepo.fetchOrders();
    failureOrOrders.fold(
      (failure) => emit(FetchOrdersFailure(failure.message)),
      (orders) => emit(FetchOrdersSuccess(orders: orders)),
    );
  }
}

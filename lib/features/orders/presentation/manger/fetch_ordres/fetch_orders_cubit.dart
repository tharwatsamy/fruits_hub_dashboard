import 'package:bloc/bloc.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/entities/data/models/order_entity.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_orders_state.dart';

class FetchOrdersCubit extends Cubit<FetchOrdersState> {
  FetchOrdersCubit(this.ordersRepo) : super(FetchOrdersInitial());
  final OrdersRepo ordersRepo;

  void fetchOrders() async {
    emit(FetchOrdersLoading());
    await for (var result in ordersRepo.fetchOrders()) {
      result.fold((f) {
        emit(FetchOrdersFailure(f.message));
      }, (r) {
        emit(FetchOrdersSuccess(
          orders: r,
        ));
      });
    }
  }
}

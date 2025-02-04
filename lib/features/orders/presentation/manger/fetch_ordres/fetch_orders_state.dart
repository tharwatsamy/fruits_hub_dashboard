part of 'fetch_orders_cubit.dart';

@immutable
sealed class FetchOrdersState {}

final class FetchOrdersInitial extends FetchOrdersState {}

final class FetchOrdersLoading extends FetchOrdersState {}

final class FetchOrdersSuccess extends FetchOrdersState {
  final List<OrderEntity> orders;

  FetchOrdersSuccess({required this.orders});
}

final class FetchOrdersFailure extends FetchOrdersState {
  final String errMessage;

  FetchOrdersFailure(this.errMessage);
}

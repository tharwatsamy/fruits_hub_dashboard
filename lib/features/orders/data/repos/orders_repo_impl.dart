import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failures.dart';
import 'package:fruit_hub_dashboard/core/services/data_service.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/entities/data/models/order_entity.dart';

import '../../../../core/utils/backend_endpoint.dart';
import '../../domain/repos/orders_repo.dart';
import '../models/order_model.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseService _dataService;

  OrdersRepoImpl(this._dataService);

  @override
  Future<Either<Failure, List<OrderEntity>>> fetchOrders() async {
    try {
      final data = await _dataService.getData(path: BackendEndpoint.getOrders);
      List<OrderEntity> orders = (data as List<dynamic>)
          .map<OrderEntity>((e) => OrderModel.fromJson(e).toEntity())
          .toList();
      return Right(orders);
    } catch (e) {
      return Left(ServerFailure('Failed to fetch orders'));
    }
  }
}

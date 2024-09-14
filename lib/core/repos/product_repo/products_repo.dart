import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failures.dart';

import '../../../features/add_product/domain/entities/add_product_input_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity);
}

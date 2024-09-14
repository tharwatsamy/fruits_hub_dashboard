import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';

import '../../errors/failures.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}

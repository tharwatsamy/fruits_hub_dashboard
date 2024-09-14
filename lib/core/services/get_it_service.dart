import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product_repo/products_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruit_hub_dashboard/core/services/stoarage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StoarageService>(FireStorage());
  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StoarageService>()));
  getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl());
}

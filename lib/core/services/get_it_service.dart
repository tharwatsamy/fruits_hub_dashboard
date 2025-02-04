import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/product_repo/products_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/services/data_service.dart';
import 'package:fruit_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruit_hub_dashboard/core/services/firestore_service.dart';
import 'package:fruit_hub_dashboard/core/services/stoarage_service.dart';
import 'package:fruit_hub_dashboard/core/services/supabase_stoarge.dart';
import 'package:fruit_hub_dashboard/features/orders/data/repos/orders_repo_impl.dart';
import 'package:fruit_hub_dashboard/features/orders/domain/repos/orders_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StoarageService>(SupabaseStoargeService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());

  getIt.registerSingleton<ImagesRepo>(
      ImagesRepoImpl(getIt.get<StoarageService>()));
  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(
      getIt.get<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<OrdersRepo>(
      OrdersRepoImpl(getIt.get<FireStoreService>()));
}

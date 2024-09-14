import 'package:fruit_hub_dashboard/core/services/fire_storage.dart';
import 'package:fruit_hub_dashboard/core/services/stoarage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<StoarageService>(FireStorage());
}

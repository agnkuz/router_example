import 'package:get_it/get_it.dart';
import 'package:router_example/router/router.gr.dart';

final GetIt sl = GetIt.asNewInstance();

void setupDependencies() {
  sl.registerLazySingleton<AppRouter>(() => AppRouter());
}

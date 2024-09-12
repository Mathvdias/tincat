import 'package:auto_injector/auto_injector.dart';
import '../services/api_service.dart';

final AutoInjector injector = AutoInjector();

void setupInjector() {
  injector.addSingleton<ApiService>(() => ApiService());
}

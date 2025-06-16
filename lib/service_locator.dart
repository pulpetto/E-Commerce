import 'package:e_commerce/data/auth/repository/auth_repository_impl.dart';
import 'package:e_commerce/data/auth/source/auth_firebase_service.dart';
import 'package:e_commerce/domain/auth/repository/auth.dart';
import 'package:e_commerce/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  // Repositories
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );

  // Usecases
  sl.registerSingleton<SignupUsecase>(
    SignupUsecase(),
  );
}

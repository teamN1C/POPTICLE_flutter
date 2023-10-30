import 'package:riverpod/riverpod.dart';
import 'package:team_nic/services/auth_service.dart';
import 'package:team_nic/services/api_service.dart';



final authServiceProvider = Provider<AuthService>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return AuthService(apiService);
});
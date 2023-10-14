import '../../core_export.dart';

class NetworkServiceImpl implements NetworkService {
  final InternetConnectionChecker connectionChecker;

  NetworkServiceImpl(this.connectionChecker);

  @override
  Future<bool> get hasConnection async {
    // Check the internet connection using InternetConnectionChecker
    final isConnected = await connectionChecker.hasConnection;
    return isConnected;
  }
}

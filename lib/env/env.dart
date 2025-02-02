import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env")
abstract class Env {
  @EnviedField(varName: 'BASE_URL', obfuscate: true, optional: false)
  static final String baseurl = _Env.baseurl;
  @EnviedField(varName: 'API_KEY', obfuscate: true, optional: false)
  static final String apiKey = _Env.apiKey;
}

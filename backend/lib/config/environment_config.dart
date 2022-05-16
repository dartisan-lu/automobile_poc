import 'package:dotenv/dotenv.dart' show load, env;

class EnvironmentConfig {
  late final String tokenSecrect;
  late final String webServer;
  late final int webPort;
  late final String mongoUrl;

  EnvironmentConfig() {
    load();
    tokenSecrect = env['token.secret']!;
    webServer = env['server.url']!;
    webPort = int.parse(env['server.port']!);
    mongoUrl = env['mongo.url']!;
  }
}

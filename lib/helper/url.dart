Map<String, dynamic> config = {
  'url': 'http://10.233.77.54:8080/',
  'connectTimeout': 5000,
  'receiveTimeout': 3000,
  'item': {
    'path': '',
    'endpoint': 'getAllItem',
  },
};

class Config {
  final String url;
  final int connectTimeout;
  final int receiveTimeout;
  final Client item;

  Config(this.url, this.connectTimeout, this.item, this.receiveTimeout);
}

class Client {
  final Map<String, dynamic> client;

  Client(this.client);

  String get path => client['path'] ?? '';
  String get endpoint => client['endpoint'] ?? '';
}

Config getConfig() {
  return Config(config['url'], config['connectTimeout'],
      Client(config['item'] ?? {}), config['receiveTimeout']);
}

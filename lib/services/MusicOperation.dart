import 'package:testing/models/Music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
        'tToofan',
        'https://th.bing.com/th/id/OIP.heMyLMtgdcxuZQRiAQ3N9AAAAA?w=64&h=64&c=7&r=0&o=5&pid=1.7',
        'most liseten',
      ),
      Music('Qaafarina', 'https://th.bing.com/th/id/OIP.u8gGUW4jDelGF5kv8nmAwwAAAA?w=140&h=150&c=7&r=0&o=7&pid=1.7&rm=3', 'Liked'
      ),
      Music('Glory', 'https://th.bing.com/th/id/OIP.uoo4jiSqC9ugCnUqG2BGBAAAAA?w=128&h=128&c=7&r=0&o=7&pid=1.7&rm=3', 'Legend'),
    ];
  }
}

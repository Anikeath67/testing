import 'package:testing/models/Music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
        'Toofan',
        'https://i.scdn.co/image/ab67616d0000b273aad3f4b601ae8763b3fc4e88',
        'most liseten',
      ),
      Music('Qaafarina', 'https://i.scdn.co/image/ab67616d0000b273c65eb44f9039e006247ef8f7', 'Liked'
      ),
      Music('Glory', 'https://i.scdn.co/image/ab67616d0000b273aad3f4b601ae8763b3fc4e88', 'Legend'),
    ];
  }
}

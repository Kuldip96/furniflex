import 'package:get/get.dart';

class Strings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'How are yo': 'How are you',
          'pune': 'pune',
          'hindi': 'hindi',
        },
        'hi_IN': {
          'How are yo': 'आप कैसे हैं?',
          'pune': 'पुणे',
          'hindi': 'हिंदी'
        },
        'fr_FR': {
          'How are yo': 'Comment vas-tu',
          'pune': 'Puné',
          'hindi': 'hindi',
        },
      };
}

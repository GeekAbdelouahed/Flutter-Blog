import 'package:flutter_test/flutter_test.dart';
import '../lib/src/presentation/utils/extensions.dart';

void main() {
  group('String extensions Test', () {
    test('Not valid email test', () async {
      String email = 'hello@gmail';

      bool isValid = email.isValidEmail;

      expect(isValid, false);
    });

    test('Valid email test', () async {
      String email = 'hello@gmail.com';

      bool isValid = email.isValidEmail;

      expect(isValid, true);
    });

    test('Not valid password test', () async {
      String email = '123';

      bool isValid = email.isValidPassword;

      expect(isValid, false);
    });

    test('Valid password test', () async {
      String email = 'helloworld';

      bool isValid = email.isValidPassword;

      expect(isValid, true);
    });
  });
}

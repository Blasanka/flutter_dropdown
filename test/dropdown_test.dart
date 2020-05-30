import 'package:flutter_test/flutter_test.dart';

import 'package:dropdown/dropdown.dart';

void main() {
  testWidgets('Is initialized DropDown', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(DropDown());
  });
}

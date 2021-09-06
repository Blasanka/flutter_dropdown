import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_dropdown/flutter_dropdown.dart';

void main() {
  testWidgets('Is initialized DropDown', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(DropDown(items: []));
  });
}

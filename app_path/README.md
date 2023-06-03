# app_path

Get application path

## Usage

```dart
import 'package:app_path/app_path.dart';

main() {
    final appPathPlugin = AppPath();
    String path = ""
    try {
      path = await appPathPlugin.getAppPath("com.dlient.macos") ?? '';
    } on PlatformException {
      path = '';
    }
}
```


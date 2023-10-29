import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';

class Constants {
  static const referenceHeight = 812;
  static const referenceWidth = 375;
  String currentPlatfrom = Platform.isAndroid
      ? "android"
      : Platform.isIOS
      ? "iOS"
      : "other";

  displayMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }
}
/*Constants class provides a set of constant values for layout reference
 and a utility method for displaying toast messages.

*referenceHeight and referenceWidth:
These two constants are used to define a reference height and width
for the application's layout. This is often used for responsive'
' design, where you design your app layout based on a specific '
'reference screen size (in this case, 812x375) and then adapt it to '
'different screen sizes and aspect ratios.

*currentPlatform:
This property is used to determine the current platform (operating system)
on which the Flutter app is running. It checks whether the platform is
Android, iOS, or another platform. This information can be useful for
platform-specific behavior or configurations.

*displayMessage:
This method is used to display a toast message using the
Fluttertoast package. A toast message is a small, non-intrusive
pop-up message that appears briefly on the screen to convey information
to the user. The displayMessage method simplifies the process of showing
such messages by encapsulating the logic.
*/

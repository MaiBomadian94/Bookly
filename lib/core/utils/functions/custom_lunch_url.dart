// import 'package:url_launcher/url_launcher.dart';
// import 'custom_snack_bar.dart';
//
// Future<void> customLaunchUrl(context, String? url) async {
//   if (url != null) {
//     Uri uri = Uri.parse(url);
//
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       customSnackBar(context, 'Can not launch $url');
//     }
//   }
// }

import 'package:url_launcher/url_launcher.dart';
import 'custom_snack_bar.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url == null) return;

  final uri = Uri.parse(url);

  try {
    bool launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched) {
      customSnackBar(context, 'Cannot launch $url');
    }
  } catch (e) {
    customSnackBar(context, 'Error launching URL');
  }
}

import 'package:flutter/cupertino.dart';

import '../utils/styles.dart';

class CustomErrorMsg extends StatelessWidget {
  const CustomErrorMsg({super.key, required this.errorMsg});

  final String? errorMsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg!,
      style: Styles.textTitle18,
    );
  }
}

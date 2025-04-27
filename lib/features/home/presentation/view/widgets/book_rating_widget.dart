import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            '4.8',
            style: Styles.textTitle16,
          ),
        ),
        Text(
          '(250)',
          style: Styles.textTitle14.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}

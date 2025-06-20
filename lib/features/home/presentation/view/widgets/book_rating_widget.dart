import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.ratingCount, required this.ratingAvg,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int ratingCount;
  final int ratingAvg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text(
            ratingAvg.toString(),
            style: Styles.textTitle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          '($ratingCount)',
          style: Styles.textTitle14.copyWith(
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}

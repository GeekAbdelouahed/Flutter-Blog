import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const PageWidget({
    Key key,
    @required this.image,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .2,
        ),
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                image,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
}

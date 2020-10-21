import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning_islam/components/transparentflatcard.dart';

class Pelajaran extends StatelessWidget {
  const Pelajaran({
    Key key,
    @required this.iconUrl,
    @required this.mataPelajaran,
    this.poin,
    this.width,
    this.locked = false,
  }) : super(key: key);

  final String iconUrl;
  final String mataPelajaran;
  final String poin;
  final double width;
  final bool locked;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        margin: EdgeInsets.only(top: 20),
        child: buildPelajaranContent(context));
  }

  Widget buildPelajaranContent(context) {
    final Widget lock = SvgPicture.asset(
      'assets/icons/lock.svg',
      width: 31,
      height: 31,
      color: Colors.white,
      semanticsLabel: "lock",
    );

    final Widget icon = SvgPicture.asset(
      iconUrl,
      width: 31,
      height: 31,
      color: Colors.white,
    );

    final TransparentFlatCard pelajaranCard = TransparentFlatCard(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: icon,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mataPelajaran,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                if (!locked)
                  Text(
                    "50 Poin",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
    if (locked) {
      return Stack(
        children: [
          pelajaranCard,
          Positioned.fill(
              child: TransparentFlatCard(
            child: Center(
              child: lock,
            ),
            color: const Color(0x77000000),
          )),
        ],
      );
    } else if (!locked) {
      return pelajaranCard;
    }
  }
}

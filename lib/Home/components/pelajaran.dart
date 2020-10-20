import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning_islam/components/transparentflatcard.dart';

class Pelajaran extends StatelessWidget {
  const Pelajaran({
    Key key,
    @required this.icon,
    @required this.mataPelajaran,
    this.poin,
    this.width,
    this.locked = false,
  }) : super(key: key);

  final Widget icon;
  final String mataPelajaran;
  final String poin;
  final double width;
  final bool locked;

  @override
  Widget build(BuildContext context) {
    final Widget lock = SvgPicture.asset(
      'assets/icons/lock.svg',
      width: 31,
      height: 31,
      color: Colors.white,
      semanticsLabel: "lock",
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
      final Container lockedPelajaran = Container(
        width: width,
        margin: EdgeInsets.only(top: 20, right: 10),
        child: Stack(
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
        ),
      );
      return lockedPelajaran;
    } else if (!locked) {
      final Container pelajaran = Container(
        width: width,
        margin: EdgeInsets.only(top: 20, right: 10),
        child: pelajaranCard,
      );
      return pelajaran;
    }
    return null;
  }
}

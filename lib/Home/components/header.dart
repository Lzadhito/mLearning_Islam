import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlearning_islam/components/transparentflatcard.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String user = "Laksamana";
    final String nasihatUlama =
        '“Siapa yang menempuh jalan untuk mencari ilmu, maka Allah akan mudahkan baginya jalan menuju surga.” (HR. Muslim)';
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assalamualaikum, $user',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    nasihatUlama,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.justify,
                  ),
                ),
                UserCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const userFullName = "Laksamana Adhito";
    const userTitle = "Taking The First Step for 'Ilm";
    final Widget feather = SvgPicture.asset(
      'assets/icons/feather-pen.svg',
      width: 31,
      height: 31,
      semanticsLabel: "feather",
    );
    final String featherCount = "35";
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TransparentFlatCard(
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userFullName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  userTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(featherCount),
                  ),
                  feather
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

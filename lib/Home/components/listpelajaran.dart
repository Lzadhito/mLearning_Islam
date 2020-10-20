import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pelajaran.dart';

class ListPelajaran extends StatelessWidget {
  const ListPelajaran({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String headerText = "Ilmu syar'i apa yang akan dipelajari hari ini?";
    final Widget moonAndCresent = SvgPicture.asset(
      'assets/icons/islam.svg',
      width: 31,
      height: 31,
      color: Colors.white,
      semanticsLabel: "Moon and cresent",
    );
    final Widget fist = SvgPicture.asset(
      'assets/icons/fist.svg',
      width: 31,
      height: 31,
      color: Colors.white,
      semanticsLabel: "Moon and cresent",
    );
    final Widget featherBook = SvgPicture.asset(
      'assets/icons/writing-with-a-feather-on-a-book.svg',
      width: 31,
      height: 31,
      color: Colors.white,
      semanticsLabel: "featherBook",
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            headerText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Pelajaran(
                icon: moonAndCresent,
                mataPelajaran: "Apa Itu Agama Islam ?",
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: fist,
                        mataPelajaran: "Syahadat",
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: featherBook,
                      mataPelajaran: "Ilmu Agama",
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Pelajaran(
                        icon: moonAndCresent,
                        mataPelajaran: "Syahadat",
                        locked: true,
                        width: 250,
                      ),
                    ),
                    Pelajaran(
                      icon: moonAndCresent,
                      mataPelajaran: "Ilmu Agama",
                      locked: true,
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}

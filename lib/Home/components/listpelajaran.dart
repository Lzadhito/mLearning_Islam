import 'package:flutter/material.dart';

import 'pelajaran.dart';

class ListPelajaran extends StatelessWidget {
  const ListPelajaran({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String headerText = "Ilmu syar'i apa yang akan dipelajari hari ini?";
    final String moonAndCresent = 'assets/icons/islam.svg';
    final String fist = 'assets/icons/fist.svg';
    final String featherBook =
        'assets/icons/writing-with-a-feather-on-a-book.svg';

    List<List<Pelajaran>> data = [
      [
        Pelajaran(
          iconUrl: moonAndCresent,
          mataPelajaran: "Apa Itu Agama Islam ?",
        ),
      ],
      [
        Pelajaran(
          iconUrl: fist,
          mataPelajaran: "Syahadat",
          width: 250,
        ),
        Pelajaran(
          iconUrl: featherBook,
          mataPelajaran: "Ilmu Agama",
        )
      ],
      [
        Pelajaran(
          iconUrl: moonAndCresent,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: fist,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: featherBook,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
      ],
      [
        Pelajaran(
          iconUrl: featherBook,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: fist,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: moonAndCresent,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
      ],
      [
        Pelajaran(
          iconUrl: fist,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: featherBook,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
        Pelajaran(
          iconUrl: moonAndCresent,
          mataPelajaran: "Pelajaran Dummy",
          locked: true,
          width: 250,
        ),
      ]
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            headerText,
            // style: Theme.of(context).textTheme.bodyText1,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ),
        buildListPelajaran(data),
      ],
    );
  }

  Column buildListPelajaran(List<List<Pelajaran>> allPelajaran) {
    return Column(
      children: List.generate(
          allPelajaran.length, (index) => buildRowLevel(allPelajaran[index])),
      // for (List<Pelajaran> level in allPelajaran) buildRowLevel(level)
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: fist,
      //             mataPelajaran: "Syahadat",
      //             width: 250,
      //           ),
      //         ),
      // Pelajaran(
      //   icon: featherBook,
      //   mataPelajaran: "Ilmu Agama",
      // ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
      // SingleChildScrollView(
      //     scrollDirection: Axis.horizontal,
      //     child: Row(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.only(left: 30.0),
      //           child: Pelajaran(
      //             icon: moonAndCresent,
      //             mataPelajaran: "Syahadat",
      //             locked: true,
      //             width: 250,
      //           ),
      //         ),
      //         Pelajaran(
      //           icon: moonAndCresent,
      //           mataPelajaran: "Ilmu Agama",
      //           locked: true,
      //         ),
      //       ],
      //     )),
    );
  }

  Widget buildRowLevel(List<Pelajaran> dataPelajaran) {
    final int length = dataPelajaran.length;
    if (length == 1) {
      Pelajaran pelajaran = dataPelajaran[0];
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: pelajaran,
      );
    } else if (length > 1) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(length, (index) {
              double margin = 0;
              if (index == 0)
                margin = 30.0;
              else
                margin = 20;
              return Container(
                margin: EdgeInsets.only(left: margin),
                child: dataPelajaran[index],
              );
            }),
          ));
    }
  }
}

import 'package:flutter/material.dart';
import 'package:ultrafat/constants/const.dart';
import 'package:ultrafat/constants/theme.dart';
import 'package:ultrafat/ui/view/detail_artikel.dart';

class ArtikelView extends StatefulWidget {
  const ArtikelView({Key? key}) : super(key: key);

  @override
  _ArtikelViewState createState() => _ArtikelViewState();
}

class _ArtikelViewState extends State<ArtikelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: result_data.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailArtikel(
                          title: result_data[index]['title'],
                          imgsrc: result_data[index]['image']),
                    ),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Image.asset(result_data[index]['image']),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        result_data[index]['title'],
                        style: blackTextStyle.copyWith(
                            fontSize: 16,
                            color: blue,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            result_data[index]['name'],
                            style: blackTextStyle.copyWith(
                                fontSize: 12,
                                color: blue,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            result_data[index]['date'],
                            style: blackTextStyle.copyWith(
                                fontSize: 12,
                                color: blue,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

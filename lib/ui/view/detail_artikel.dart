import 'package:flutter/material.dart';
import 'package:ultrafat/constants/const.dart';
import 'package:ultrafat/constants/theme.dart';

class DetailArtikel extends StatefulWidget {
  final String title;
  final String imgsrc;
  DetailArtikel({Key? key, required this.title,required this.imgsrc}) : super(key: key);

  @override
  _DetailArtikelState createState() => _DetailArtikelState();
}

class _DetailArtikelState extends State<DetailArtikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              children: [
                Text("${widget.title}",style: blackTextStyle.copyWith(
                  fontSize: 20,
                  color: blue
                ),),
                SizedBox(height: 10,),
                Container(
                  child: Image.asset("${widget.imgsrc}"),
                ),
                SizedBox(height: 10,),
                Text(content_artikel,style: blackTextStyle.copyWith(
                  color: blue,
                  fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ultrafat/constants/theme.dart';
import 'package:ultrafat/ui/view/score_view.dart';

class BmiView extends StatefulWidget {
  @override
  BmiViewState createState() => BmiViewState();
}

class BmiViewState extends State<BmiView> {
  TextEditingController usiatxt = new TextEditingController();
  TextEditingController tinggitxt = new TextEditingController();
  TextEditingController berattxt = new TextEditingController();
  int? sex;
  void changeSex(int datasex){
    setState(() {
      sex = datasex;
    });
  }

  void calculateBMI(BuildContext context){
    double tinggi = double.parse(tinggitxt.text) /100;
    double berat = double.parse(berattxt.text);

    double result =  berat / (tinggi * tinggi);
    Navigator.push(context,MaterialPageRoute(builder: (_)=>ScoreView(
      score: result.toStringAsFixed(1),
    )));
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 126),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pilih Jenis Kelamin anda",
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          changeSex(0);
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          width: 167,
                          height: 160,
                          child: Column(
                            children: [
                              Image.asset("assets/man.png"),
                              Text("Laki Laki")
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: sex == null ? Colors.white:sex==0?Colors.grey:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          changeSex(1);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          width: 167,
                          height: 160,
                          child: Column(
                            children: [
                              Image.asset("assets/women.png"),
                              Text("Perempuan")
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: sex == null ? Colors.white:sex==1?Colors.grey:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(6))),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 27,
                ),
                Text(
                  "Masukan usia anda",
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: usiatxt,
                  decoration: InputDecoration(
                    hintText: "",

                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 2)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Masukan berat badan anda",
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: berattxt,
                  decoration: InputDecoration(
                    hintText: "",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 2)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Masukan tinggi anda",
                  style: blackTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: tinggitxt,
                  decoration: InputDecoration(
                    hintText: "",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: blue, width: 2)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blue, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height:43 ,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: blue
                    ),
                    onPressed: () {
                     
                      calculateBMI(context);
                    },
                    child: Text("HITUNG"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}

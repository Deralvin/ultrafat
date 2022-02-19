import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ultrafat/constants/const.dart';
import 'package:ultrafat/constants/theme.dart';
import 'package:ultrafat/ui/view/bottom_nav_view.dart';
class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
TextEditingController emailtxt = new TextEditingController();
TextEditingController passtxt = new TextEditingController();
SharedPreferences? prefs;
void loginAttempt(BuildContext context)async{
  if(emailtxt.text=="martin@gmail.com" && passtxt.text=="12345"){
    await prefs!.setString(K_EMAIL, emailtxt.text);
    await prefs!.setString(K_PASS, passtxt.text);
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>BottomNavView()), (route) => false);
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Akun Tidak Ditemukan")));
  }
}

void initdata()async{
  prefs = await SharedPreferences.getInstance();
  final String email = prefs!.getString(K_EMAIL)??"";
  if(email.isNotEmpty){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>BottomNavView()), (route) => false);
  }
}
void initState() {
  initdata();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 227,
                child: Image.asset("assets/loginbanner.png"),
              ),
              SizedBox(height: 59,),
              TextField(
                controller: emailtxt,
                decoration: InputDecoration(
                  hintText: "Alamat email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                controller: passtxt,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Kata Sandi",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                width: double.infinity,
                height:43 ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: blue
                  ),
                  onPressed: () {
                    loginAttempt(context);
                  },
                  child: Text("MASUK"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

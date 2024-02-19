import 'package:classico/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/top_banner.png',
              height: 233, width: 1250, fit: BoxFit.fill),
          Text(
            'Angel Sure',
            style: GoogleFonts.akayaTelivigala(
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: Color.fromRGBO(47, 128, 237, 1)),
          ),
          Image.asset('assets/girl.png', width: 245, height: 295),
          Image.asset('assets/footer.png',
              height: 233, width: 1250, fit: BoxFit.fill)
        ],
      ),
    
    ));
}


//To next page 
void toLoginPage (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login() ));
}

@override
  void initState() {
    Future.delayed(Duration(seconds: 3), toLoginPage); 
    super.initState();
  }
}
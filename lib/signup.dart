import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/top_banner.png',
                height: 233,
                width: 1250,
                fit: BoxFit.fill,
                alignment: Alignment.topCenter),
            const Text(
              "Sign In To Continue",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/google.png',
                  height: 26,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                Image.asset("assets/facebook.png",
                    height: 26, width: 27, fit: BoxFit.fill),
                Image.asset('assets/twitter.png',
                    height: 25.79, width: 26.82, fit: BoxFit.fill),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "OR",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4f4f4f)),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email ID*',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4f4f4f),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 35, left: 15, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 16),
              child: Row(
                children: [
                  Text(
                    'Password*',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4f4f4f),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 35, left: 15, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),



            Padding(
              padding: const EdgeInsets.only(
                right: 35,
                left: 15,
              ),
              child: Row(
                 children : [Container(
                    height: 44,
                    width: 210,
                    decoration: BoxDecoration(
                        color: Color(0xff2f80ed),
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffffffff)),
                      ),
                    ),
                 ),
                  SizedBox(
                    width: 18,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff2f80ed),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    height: 44,
                    width: 210,
                    child: Container(
                      child: Text(
                        "GENERATE",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms and Conditions | Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
              ],
            ),
            Image.asset("assets/footer.png",
                height: 233,
                width: 1250,
                fit: BoxFit.fill,
                alignment: Alignment.bottomCenter)
    ])
    ,)
        );
      
    
  }
}

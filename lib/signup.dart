
import 'dart:math';

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  suffixIcon:  Icon(Icons.visibility_off),
                  
       

                ),
                
            ),),
            
            SizedBox(
              height: 30,
            ),



           Padding(
             padding: const EdgeInsets.only(left : 7 , right :22 ),
             child: Center(
               child: Row(
                 children: [
                   TextButton(onPressed: (){
                   }, child:Container( 
                      width: 200,
                      height: 44,
                      
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle ,
                        color:Color(0xff2f80ed) ,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      
                      child: Text("SIGNUP", style: TextStyle(
                         fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffffffff),
                    
                    ),
                    textAlign: TextAlign.center,
                    )
                    )
                     ),
                   
                  
                   
                     TextButton(onPressed: (){},
                      
                        child :Container( 
                        width: 200,
                        height: 44,
                        
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color:Color(0xff2f80ed) ,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        
                        child: Text("Generate", style: TextStyle(
                           fontSize: 22,
                          
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff),
                                           
                                           ),
                                           textAlign: TextAlign.center,
                                           )
                                           )
                     
  
                     
               ),
               ], 
               ),
             ),
           ),
          
          
            SizedBox(
              height: 8,
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


dynamic generatePass(){
  String uppercase = "QWERTYUIOPASDFGHJKLZXCVBNM";
  String lowercase = "qwertyuiopasdfghjklzxcvbnm";
  String numbers = "123456789";
  String symbols = "!@#\$%^&*()><?/";

 String password = "";

 int passlength = 10;

 String generated = uppercase+ lowercase+ numbers + symbols ; 

 List <String> list = generated.split('').toList();

 Random random = Random();

 for (int i=0; i<passlength; i++ ){
  int index = random.nextInt(generated.length);
  password += generated[index] ;

  return password;
 }
}
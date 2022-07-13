import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text('Welcome'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
                //top: -80,
                child: Image.asset('assets/images/main_top.png',width: 76,),),

            Positioned(

              bottom: 0,
              child: Image.asset('assets/images/main_bottom.png',width: 80,),),

            SizedBox(
              width: double.infinity,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 45,),

                   const Text('Welcome',style: TextStyle(fontSize: 25.0,fontFamily: "myfont")),
                  const SizedBox(height: 45,),
                  SvgPicture.asset("assets/icons/chat.svg",width: 220,height: 220,),
                  const SizedBox(height: 35,),

                  const SizedBox(
                    height: 35,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signin");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: const Text(
                      "LogIn",
                      style:  TextStyle(fontSize: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SignUp",
                      style: TextStyle(fontSize: 20, color: Colors.grey[850]),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

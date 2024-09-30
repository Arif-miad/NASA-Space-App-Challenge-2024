import 'package:exofun/welcome/hello.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String inputName = 'Explorer';
    String inputAge = '20';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Create Account",
                style: GoogleFonts.istokWeb(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonContainer(text: 'Name'),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        inputName = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
                        contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonContainer(text: 'Age'),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        inputAge = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter Your Age',
                        contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Hello(
                          name: inputName,
                          age: inputAge,
                        );
                      },
                    ),
                  );
                },
                child: ButtonContainer(
                  text: 'Create',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  final String text;
  const ButtonContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 135,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF001584),
            Color(0xFF31B9E4),
          ],
          stops: [0.0035, 0.9965],
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.istokWeb(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

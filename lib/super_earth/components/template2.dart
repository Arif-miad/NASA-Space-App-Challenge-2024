import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';

class Template2 extends StatelessWidget {
  final String title;
  final String bgImage;
  final Widget child;
  final Widget nextWidget;
  final double currentPage;
  final double totalPages;
  const Template2({
    super.key,
    required this.child,
    required this.nextWidget,
    required this.currentPage,
    required this.totalPages,
    required this.title,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleContainer(text: title),
              Container(
                height: 250,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  //color: Colors.white.withOpacity(0.2),
                ),
                child: child,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Button1(text: 'Back'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: currentPage / totalPages,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        minHeight: 10,
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      child: Button1(text: 'Next'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return nextWidget;
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

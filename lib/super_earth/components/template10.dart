import 'package:exofun/super_earth/components/button1.dart';
import 'package:exofun/super_earth/components/text_box_1.dart';
import 'package:exofun/super_earth/components/title_container.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class Template10 extends StatefulWidget {
  final String customTitleText;
  final double currentPage;
  final double totalPages;
  final String bgImage;
  final String textMain;
  final String gif;
  final Widget nextPage;

  const Template10(
      {super.key,
      required this.textMain,
      required this.gif,
      this.customTitleText = '',
      required this.bgImage,
      required this.nextPage,
      required this.currentPage,
      required this.totalPages});

  @override
  State<Template10> createState() => _Template10State();
}

class _Template10State extends State<Template10> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String titleText = 'Super Earth Introduction';
    if (widget.customTitleText != '') {
      titleText = widget.customTitleText;
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleContainer(text: titleText),
              Container(
                height: 180,
                width: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextBox1(
                      extraWidth: -100,
                      text: widget.textMain,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 250,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // child: Image.asset(
                        //   image,
                        //   fit: BoxFit.contain,
                        // ),
                        child: GifView.asset(widget.gif),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75.0),
                    child: InkWell(
                      child: Button1(text: 'Back'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: widget.currentPage / widget.totalPages,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      minHeight: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75.0),
                    child: InkWell(
                      child: Button1(text: 'Next'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return widget.nextPage;
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

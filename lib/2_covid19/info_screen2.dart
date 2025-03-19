import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:flutter_home_work/2_covid19/colors2.dart' as covidColors;
import 'package:flutter_home_work/2_covid19/colors2.dart';
import 'package:flutter_home_work/2_covid19/header2.dart';
import 'package:flutter_home_work/2_covid19/home_screen2.dart';
import 'package:flutter_svg/svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyHeader(
                images: "assets/icons/Corona Dr.svg",
                textTop: "Get to know",
                textBottom: "About Covid-19.",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Symptoms",
                      style: covidColors.kTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SymptomsCard(
                          images: "assets/images/headache.png",
                          symptom: "Headache",
                          isActive: true,
                        ),
                        SymptomsCard(
                          images: "assets/images/cough.png",
                          symptom: "Cough",
                          isActive: false,
                        ),
                        SymptomsCard(
                          images: "assets/images/fever.png",
                          symptom: "Fever",
                          isActive: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PreventCard(
                      images: "assets/images/wear_mask.png",
                      title:
                          "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                      text: "Wear face mask",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const PreventCard(
                      images: "assets/images/wash_hands.png",
                      title:
                          "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                      text: "Wear your hands",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const HomeScreen();
            }));
          },
        ));
  }
}

class PreventCard extends StatelessWidget {
  final String images;
  final String title;
  final String text;
  const PreventCard({
    super.key,
    required this.images,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Symptoms1();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 156,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 136,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 8),
                        blurRadius: 24,
                        color: kShadowColor)
                  ],
                ),
              ),
              Image.asset(images),
              Positioned(
                  left: 130,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    width: MediaQuery.of(context).size.width - 170,
                    height: 136,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: kTitleTextColor.copyWith(fontSize: 16),
                        ),
                        Text(
                          title,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset("assets/icons/forward.svg"))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

extension on Color {
  copyWith({required int fontSize}) {}
}

// ignore: must_be_immutable
class SymptomsCard extends StatefulWidget {
  final String images;
  final String symptom;
  bool isActive;
  SymptomsCard(
      {super.key,
      required this.images,
      required this.isActive,
      required this.symptom});

  @override
  State<SymptomsCard> createState() => _SymptomsCardState();
}

class _SymptomsCardState extends State<SymptomsCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              widget.isActive
                  ? BoxShadow(
                      blurRadius: 20,
                      color: kActiveShadowColor,
                      offset: const Offset(0, 10),
                    )
                  : BoxShadow(
                      offset: const Offset(0, 3),
                      blurRadius: 6,
                      color: kShadowColor)
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                widget.images,
                height: 90,
              ),
              Text(
                widget.symptom,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Symptoms1 extends StatelessWidget {
  const Symptoms1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Waer Face Mask"),
      ),
    );
  }
}
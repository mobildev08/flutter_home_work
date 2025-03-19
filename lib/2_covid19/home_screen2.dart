import 'package:flutter/material.dart';
import 'package:flutter_home_work/2_covid19/colors2.dart';
import 'package:flutter_home_work/2_covid19/counter2.dart';
import 'package:flutter_home_work/2_covid19/header2.dart';
import 'package:flutter_home_work/2_covid19/info_screen2.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _dropDownItems = [
    "Indonesia",
    "Bangladesh",
    "United States",
    "Japan",
    "Uzbekistan"
  ];
  String _selectedItem = "Indonesia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const MyHeader(
                  images: "assets/icons/Dr Corona.svg",
                  textTop: "All you need",
                  textBottom: "is stay at home"),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: DropdownButton(
                        dropdownColor: Colors.white,
                        icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                        isExpanded: true,
                        underline: const SizedBox(),
                        value: _selectedItem,
                        items: _dropDownItems.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Case Update\n",
                                  style: kTitleTextStyle),
                              TextSpan(
                                  text: "Newest update March 28",
                                  style: TextStyle(color: kTextLightColor))
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "See details",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 30,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Counter(
                              colorCounter: kInfectedColor,
                              infectedNumber: "1046",
                              counterName: "Infected"),
                          Counter(
                              colorCounter: kDeathColor,
                              infectedNumber: "87",
                              counterName: "Deaths"),
                          Counter(
                              colorCounter: kRecoverColor,
                              infectedNumber: "46",
                              counterName: "Recover")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Spread of Virus",
                          style: kTitleTextStyle,
                        ),
                        Text(
                          "See Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(20),
                      height: 178,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 30,
                                color: kShadowColor)
                          ]),
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const InfoScreen();
            }));
          },
        ));
  }
}

class MyCLipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
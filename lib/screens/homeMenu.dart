// ignore_for_file: file_names, must_be_immutable
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:radio/widgets/carouselWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio/constants/const.dart';
import 'package:flutter/material.dart';
import '../widgets/tendance.dart';

class HomeMenuScreen extends StatelessWidget {
  HomeMenuScreen({super.key});
  ScrollController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        backgroundColor: lightColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
              size: 20,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        centerTitle: false,
        title: Text(
          "Menu",
          style: GoogleFonts.poppins(
            fontSize: mediumHeading,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exclu de la semaine",
                style: GoogleFonts.poppins(
                  fontSize: largeHeading,
                  fontWeight: FontWeight.w700,
                ),
              ),
              heightSpace(30.0),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [
                    carouselWidget(
                        context, "assets/images/i1.jpg", "Titre", "sous-titre"),
                    carouselWidget(
                        context, "assets/images/i2.jpg", "Titre", "sous-titre"),
                    carouselWidget(
                        context, "assets/images/i4.jpg", "Titre", "sous-titre"),
                    carouselWidget(
                        context, "assets/images/i5.jpg", "Titre", "sous-titre"),
                  ],
                  options: CarouselOptions(
                    height: 224,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                ),
              ),
              heightSpace(30.0),
              Text(
                "Tendances",
                style: GoogleFonts.poppins(
                  fontSize: largeHeading,
                  fontWeight: FontWeight.w700,
                ),
              ),
              heightSpace(30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  tendancesWidget(context),
                  tendancesWidget(context),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: myDrawer(),
      ),
    );
  }
}

Widget myDrawer() {
  return ListView(
    padding: EdgeInsets.zero,
    children: [
      UserAccountsDrawerHeader(
        currentAccountPicture: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=2000&t=st=1684258522~exp=1684259122~hmac=3affa032df7e0e12965c7af0c553b5894ca8e96ddb1022605aca0a1c8e26ad5a',
          ),
        ),
        accountEmail: Text(
          'jane.doe@example.com',
          style: GoogleFonts.poppins(fontSize: 13.9),
        ),
        accountName: Text(
          "Brou Marc",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
      ),
      ListTile(
        leading:
            const FaIcon(FontAwesomeIcons.user, color: Colors.white, size: 20),
        title: Text(
          'Compte',
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        onTap: () {},
      ),
      ListTile(
        leading:
            const FaIcon(FontAwesomeIcons.gear, color: Colors.white, size: 20),
        title: Text(
          'Paramètres',
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        onTap: () {},
      ),
      ListTile(
          leading: const FaIcon(FontAwesomeIcons.rightFromBracket,
              color: Colors.white, size: 20),
          title: Text(
            'Déconnexion',
            style: GoogleFonts.poppins(fontSize: 16),
          ),
          onTap: () async {}),
    ],
  );
}
// ignore_for_file: must_be_immutable

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../constants/const.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  ScrollController controller = PageController();
  List icons = [FontAwesomeIcons.pause, FontAwesomeIcons.play];
  final url = dotenv.env['BASE_URL'];
  AudioPlayer audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  playRadio() async {
    try {
      await audioPlayer.play(UrlSource(url as String));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Radio pas encore disponible",
            style: GoogleFonts.poppins(
              color: lightColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> stopRadio() async {
    await audioPlayer.stop();
  }

  @override
  void initState() {
    super.initState();
    playRadio();
    setState(() {
      _isPlaying = true;
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

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
          "Radio",
          style: GoogleFonts.poppins(
            fontSize: mediumHeading,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 400,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.withOpacity(.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/icons/radio.png',
                  color: Colors.deepPurple.withOpacity(.9),
                ),
              ),
              heightSpace(40.0),
              SizedBox(
                width: MediaQuery.of(context).size.width - 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonWidget(FontAwesomeIcons.backward),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isPlaying = !_isPlaying;
                          icons = icons.reversed.toList();
                          if (icons[0] == FontAwesomeIcons.pause) {
                            playRadio();
                          } else {
                            stopRadio();
                          }
                        });
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(
                            25,
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        elevation:
                            MaterialStateProperty.resolveWith((states) => 0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          FaIcon(
                            icons[0],
                            size: 42,
                          ),
                        ],
                      ),
                    ),
                    buttonWidget(FontAwesomeIcons.forward),
                  ],
                ),
              ),
              heightSpace(40.0),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 80,
                      child: LottieBuilder.asset(
                        'assets/lottieFiles/radio.json',
                        fit: BoxFit.cover,
                        animate: _isPlaying,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      height: 80,
                      child: Lottie.asset(
                        'assets/lottieFiles/radio.json',
                        fit: BoxFit.cover,
                        animate: _isPlaying,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      height: 80,
                      child: Lottie.asset(
                        'assets/lottieFiles/radio.json',
                        fit: BoxFit.cover,
                        animate: _isPlaying,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      height: 80,
                      child: Lottie.asset(
                        'assets/lottieFiles/radio.json',
                        fit: BoxFit.cover,
                        animate: _isPlaying,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 50,
                      height: 80,
                      child: Lottie.asset(
                        'assets/lottieFiles/radio.json',
                        fit: BoxFit.cover,
                        animate: _isPlaying,
                      ),
                    ),
                  ],
                ),
              ),
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

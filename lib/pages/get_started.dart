import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/halodek_menu.dart';

class GetStartedpage extends StatelessWidget {
  const GetStartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/img-started.png",
                  ))),
        ),
        Container(
          width: double.infinity,
          height: 326,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.0)
            ],
          )),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Treat ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF),
                          fontSize: 24,
                        )),
                    Text('Patient ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0095D9),
                          fontSize: 24,
                        )),
                    Text('Like A ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffFFFFFF),
                          fontSize: 24,
                        )),
                    Text('Queen',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0095D9),
                          fontSize: 24,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Explore the best our services with\n professional specialist doctor",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xffFFFFFF),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HalodekMenupage()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(18)),
                    child: Text("Get Started",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff050505),
                          fontSize: 24,
                        )),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

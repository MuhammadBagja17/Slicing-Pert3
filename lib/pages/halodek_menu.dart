import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/main_menu.dart';

class HalodekMenupage extends StatelessWidget {
  const HalodekMenupage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role) {
      return Container(
        padding: const EdgeInsets.only(bottom: 30, right: 2, left: 5),
        margin: const EdgeInsets.only(bottom: 30, left: 60),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img
                            //"assets/img-doc1.png",
                            )))),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          //'dr. Mawar N.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff050505),
                            fontSize: 18,
                          )),
                      Text(role,
                          //'Spesialis Penyakit Dalam',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff958D8D),
                            fontSize: 10,
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: Image(image: AssetImage("assets/logo-halodek.png")),
          titleSpacing: 60,
          title: Text('HALODEK',
              textAlign: TextAlign.right,
              style: GoogleFonts.bungee(
                color: Color(0xfFFFFFFF),
                fontSize: 35,
                fontWeight: FontWeight.w600,
              )),
          flexibleSpace: Container(
            decoration: BoxDecoration(color: Color(0xff0095D9)),
          ),
          actions: <Widget>[Icon(Icons.search), Icon(Icons.settings)],
        ),
        body: Stack(
          children: [
            Container(
              width: 79,
              height: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      doctorCard("assets/web-1.png", "Panas Dalam",
                          "Gejala panas dalam sebenarnya\n merupakan gejala dari gangguan kesehatan\n lain yang akan timbul."),
                      doctorCard("assets/web-2.png", "4 Penyebab Flue",
                          "Hidung tersumbat, batuk, dan pilek sangat\n mengganggu aktivitas selama bekerja."),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainMenupage()),
                          );
                        },
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 60),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(18)),
                            child: Text("Dokter",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff0095D9),
                                  fontSize: 24,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

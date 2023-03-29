import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/page_4.dart';

class MainMenupage extends StatelessWidget {
  const MainMenupage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: const Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
                height: 230,
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
                            fontSize: 14,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/ic-star.png"))),
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff0095D9)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: [
                const SizedBox(
                  height: 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello,\nbagjamhmmd",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff050505),
                              fontSize: 24,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Stay Healthy with Our Specialist Doctor",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff958D8D),
                              fontSize: 13,
                            )),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img-profile.png",
                              ))),
                    )
                  ],
                ),
                doctorCard("assets/img-doc1.png", "dr. Mawar N.",
                    "Spesialis Penyakit Dalam"),
                doctorCard("assets/img-doc2.png", "dr. Zizah Ayuningsih.",
                    "Spesialis Kulit Kelamin"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CallDoctorpage()),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text("RS Location",
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
          ),
        ),
      ),
    );
  }
}

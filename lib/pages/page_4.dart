import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallDoctorpage extends StatelessWidget {
  const CallDoctorpage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard() {
      return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffFFFFFF), Color(0xff0095D9)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 177,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/map-rs.png"))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text('Rumah Sakit Terdekat ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 24,
                      )),
                  Text(
                      '* RS. Al-Islam\n* RS. Pindad\n* RS. Hasan Sadikin\n* RS. Harapan Bunda',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                      ))
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff0095D9), Color(0xffFFFFFF)]))),
          doctorCard()
        ],
      ),
    );
  }
}

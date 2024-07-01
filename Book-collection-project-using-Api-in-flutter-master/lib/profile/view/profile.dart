import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_msib1/core/dependency/dependency.dart';
import 'package:test_msib1/core/theme/theme.dart';
import '../widget/item-credensial.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            // WidgetProfile() removed as it was undefined
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${profile.userData.value.name}',
                  style: GoogleFonts.openSans(
                      color: black, fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: grey, size: 25),
                SizedBox(width: 10),
                Text(
                  '${profile.userData.value.email}',
                  style: GoogleFonts.openSans(color: grey, fontSize: 15),
                )
              ],
            ),
            SizedBox(height: 50),
            ItemCredensial(),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: red, fixedSize: Size(Get.width, 45)),
              onPressed: () => profile.logout(),
              child: Text(
                'LOG OUT',
                style: TextStyle(
                    color: white, fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

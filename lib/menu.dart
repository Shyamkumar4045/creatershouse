import 'package:flutter/material.dart';
import 'package:shyam_project/edit_profile.dart';
//testing
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
//good morning
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffFFF6EC),
      appBar: AppBar(
          backgroundColor: const Color(0xffFFF6EC),
        leading: IconButton(
          iconSize: screenWidth * 0.06,
          icon: Image.asset('assets/icons/back_with_card.png'),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Menu',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                _buildImageContainer('assets/icons/yellow_line_bg.png',
                    height: screenHeight * 0.30,
                    padding: EdgeInsets.only(right: screenWidth * 0.025)),
                _buildMenuHeader(),
                Container(
                  height: screenHeight * 0.26,
                  margin: EdgeInsets.only(top: screenHeight * 0.04),
                  padding: EdgeInsets.all(screenWidth * 0.025),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image:
                          AssetImage('assets/icons/card_person_bg_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0.0,
                        top: 0.0,
                        child: SizedBox(
                          height: screenWidth * 0.12,
                          width: screenWidth * 0.12,
                          child: IconButton(
                            icon: Image.asset('assets/icons/edit_button.png'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: screenWidth * 0.09,
                            backgroundImage: const AssetImage(
                                'assets/icons/card_person.png'),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          const Text(
                            'Naman Namdev',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            '+91 7859854159',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          Container(
                            height: screenHeight * 0.04,
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.025),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  'assets/icons/gold_member_icon.png',
                                  height: screenHeight * 0.027,
                                  width: screenHeight * 0.027,
                                ),
                                SizedBox(width: screenWidth * 0.025),
                                const Expanded(
                                  child: Text(
                                    'Gold Member',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  'See Benefits',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: screenWidth * 0.025),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            _buildMenuItem('Payment Method', 'assets/icons/payment_method.png',
                screenWidth, screenHeight),
            _buildMenuItem('Change Password',
                'assets/icons/change_password_icon.png', screenWidth, screenHeight),
            _buildMenuItem('Privacy', 'assets/icons/privacy_icon.png',
                screenWidth, screenHeight),
            _buildMenuItem('Report a problem', 'assets/icons/report_icon.png',
                screenWidth, screenHeight),
            _buildMenuItem(
                'Get Help', 'assets/icons/help_icon.png', screenWidth, screenHeight),
            _buildMenuItem('Log Out', 'assets/icons/logout_icon.png', screenWidth,
                screenHeight, isRed: true),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String iconPath, double screenWidth,
      double screenHeight,
      {bool isRed = false}) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(iconPath, height: screenHeight * 0.03, width: screenHeight * 0.03),
            SizedBox(width: screenWidth * 0.05),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: screenWidth * 0.037,
                  fontWeight: FontWeight.w500,
                  color: isRed ? Colors.red : Colors.black,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: screenWidth * 0.025,
              color: isRed ? Colors.red : Colors.black,
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.018),
        Divider(height: 1, color: Colors.grey.withOpacity(0.2)),
        SizedBox(height: screenHeight * 0.025),
      ],
    );
  }

  Widget _buildImageContainer(String imagePath,
      {double height = 0, EdgeInsets? padding, EdgeInsets? margin}) {
    return Container(
      height: height,
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildMenuHeader() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          const Expanded(child: Text('')),
          const Text('History',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12)),
          const SizedBox(width: 10),
          Image.asset('assets/icons/arrow_next.png', width: 16, height: 16),
        ],
      ),
    );
  }
}

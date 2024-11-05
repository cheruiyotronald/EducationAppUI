import 'package:education_app_ui/widgets/description_section.dart';
import 'package:education_app_ui/widgets/video_section.dart';
import 'package:flutter/material.dart';

class PlayCourse extends StatefulWidget {
  const PlayCourse({super.key});

  @override
  State<PlayCourse> createState() => _PlayCourseState();
}

class _PlayCourseState extends State<PlayCourse> {
  bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF8EFEA),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8EFEA),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Web Design',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Color(0xFF5D4037),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.03),
            child: Icon(
              Icons.notifications,
              size: screenWidth * 0.07,
              color: Color(0xFFFF6F00),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.01,
          horizontal: screenWidth * 0.05,
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              width: screenWidth,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                color: Color(0xFFF8EFEA),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/web design.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: AnimatedScale(
                    scale: 1.1,
                    duration: Duration(milliseconds: 200),
                    child: Container(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Color(0xFFFF6F00),
                        size: screenWidth * 0.12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'web design complete course',
              style: TextStyle(
                fontSize: screenHeight * 0.03,
                fontWeight: FontWeight.w700,
                color: Color(0xFF5D4037),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              'created by: Cheruiyot Ronald',
              style: TextStyle(
                fontSize: screenHeight * 0.02,
                fontWeight: FontWeight.w400,
                color: Color(0xFF5D4037),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              '55 Videos',
              style: TextStyle(
                fontSize: screenHeight * 0.02,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: isVideoSection ? 5 : 0,
                    color: isVideoSection
                        ? Color(0xFFFF6F00)
                        : Color(0xFFFF6F00).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.018,
                          horizontal: screenWidth * 0.07,
                        ),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: !isVideoSection ? 5 : 0,
                    color: !isVideoSection
                        ? Color(0xFFFF6F00)
                        : Color(0xFFFF6F00).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.018,
                          horizontal: screenWidth * 0.07,
                        ),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: isVideoSection ? VideoSection() : DescriptionSection(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFF6F00),
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
        ),
      ),
    );
  }
}

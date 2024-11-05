import 'package:education_app_ui/screens/course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatelessWidget {
  List<Color> BgColors = [
    Color(0xFFFF6F00),
    Color(0xFF5D4037),
    Color(0xFFFF6F00),
    Color(0xFF388E3C),
    Color(0xFF8E24AA),
    Color(0xFFFFC107),
  ];

  List<String> containerList = [
    "Category",
    "Coding Class",
    "Free Course",
    "Leaderboard",
    "BookStore",
    "Live Course"
  ];

  List<String> CourseImages = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png"
  ];

  List<String> CourseTitle = [
    "Flutter Course",
    "Web Course",
    "React Course",
  ];

  List<String> CourseRating = [
    "8.6",
    "8.0",
    "7.5",
  ];

  List<Color> CourseColor = [
    Color(0xFFFF6F00),
    Color(0xFF5D4037),
    Color(0xFFFF6F00),
    Colors.green,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<Icon> IconsList = [
      Icon(
        Icons.file_copy,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.padding_sharp,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.store,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.video_camera_back_rounded,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
      Icon(
        Icons.leaderboard,
        color: Colors.white,
        size: screenWidth * 0.07,
      ),
    ];
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Color(0xFFF8EFEA),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.02,
            right: screenWidth * 0.03,
            left: screenHeight * 0.03,
          ),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello, Ronald",
                    style: txtTheme.titleLarge?.copyWith(
                      color: Color(0xFF5D4037),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.notifications_rounded,
                    color: Color(0xFFFF6F00),
                    size: screenWidth * 0.07,
                  )
                ],
              ),
              SizedBox(
                height: screenHeight * 0.005,
              ),
              Row(
                children: [
                  Text(
                    "Choose your course\t",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    "Right Away",
                    style: TextStyle(color: Color(0xFFFF6F00)),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                height: screenHeight * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      labelText: "Search for your grades, course, training",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black45,
                      )),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.003,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: containerList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: screenWidth / (screenHeight * 0.45),
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: screenWidth * 0.15,
                        width: screenWidth * 0.15,
                        decoration: BoxDecoration(
                          color: BgColors[index],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: IconsList[index],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Text(containerList[index])
                    ],
                  );
                },
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Courses",
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xFFFF6F00),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                        vertical: screenHeight * 0.01,
                      ),
                      height: screenHeight * 0.25,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CourseDetails(),
                                ),
                              );
                            },
                            child: Container(
                              height: screenHeight * 0.12,
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CourseColor[index],
                              ),
                              child: Image.asset(
                                CourseImages[index],
                                height: screenHeight * 0.09,
                                width: screenWidth * 0.12,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  CourseTitle[index],
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.02),
                                Text(
                                  CourseRating[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: screenHeight * 0.02,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: screenHeight * 0.02,
                                        itemBuilder: (context, index) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                        onRatingUpdate: (rating) {}),
                                    Container(
                                      height: screenHeight * 0.04,
                                      width: screenHeight * 0.04,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: screenHeight * 0.02,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:standard_project/layout/app_name_cubit.dart';
import 'package:standard_project/shared/shared_preferences.dart';


class BoardingModel {
  final String image;
  final String body;
  final String title;

  BoardingModel({
    required this.image,
    required this.body,
    required this.title,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/on-boarding-cover.jpg',
        body: 'Body Boarding 1',
        title: 'Title Boarding 1'),
    BoardingModel(
        image: 'assets/images/on-boarding-cover.jpg',
        body: 'Body Boarding 2',
        title: 'Title Boarding 2'),
    BoardingModel(
        image: 'assets/images/on-boarding-cover.jpg',
        body: 'Body Boarding 3',
        title: 'Title Boarding 3'),
  ];
  bool isLast = false;

  void submit(){
    CacheHelper.saveData(key:'onBoarding', value: true).then((value){
      if(value){
       // Navigator.pushNamed(context, AppNameCubitHome.id);   OR
        Navigator.pushReplacementNamed(context, AppNameCubitHome.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(onPressed: (){
              // Navigator.pushNamed(context, AppNameCubitHome.id);
              Navigator.pushReplacementNamed(context, AppNameCubitHome.id);
            }, child: Text('Skip')),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: boardingController,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                      //print('it is last Page');
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boardingController,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.deepOrange,
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      spacing: 5.0,
                      expansionFactor: 4.0,
                    ),
                    count: boarding.length,
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (isLast) {
                       // navigateAndReplacement(context, LoginScreen());
                        submit();
                      } else {
                        boardingController.nextPage(
                            duration: Duration(milliseconds: 650),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${model.image}'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '${model.title}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '${model.body}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      );
}

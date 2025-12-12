import 'package:flutter/material.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';
import 'package:practise_three/features/home/home_screen.dart';
import 'package:practise_three/features/presentation/models/on_boarding_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller =PageController();
  OnBoardingItems itemsCount = OnBoardingItems();
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index){
                setState(() {
                  currentIndex=index;
                });
              },
                itemCount: itemsCount.items.length,
                itemBuilder: (context,index) {
                  return Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset(itemsCount.items[index].image),
                          Positioned(
                            top: 73,
                              right: 25,
                              child: Visibility(
                                visible: currentIndex!=itemsCount.items.length-1,
                                child: CustomElevatedButton(
                                  onPressed: (){
                                    controller.jumpToPage(itemsCount.items.length-1);
                                  },
                                    title: Text("Skip",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
                                ),
                              )
                          )
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text(itemsCount.items[index].title,textAlign: TextAlign.center,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.primary)),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(itemsCount.items[index].description,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                    ],
                  );
                }
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: itemsCount.items.length,
            effect: ExpandingDotsEffect(
              radius: 4,
              dotHeight: 8,
              dotColor:  const Color(0xFFD9D9D9),
              activeDotColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: CustomElevatedButton(
              onPressed: (){
                if(currentIndex==itemsCount.items.length-1){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }else{
                  controller.nextPage(duration: Duration(milliseconds: 600), curve: Curves.easeInOut);
                }
              },
              title: Text(currentIndex==itemsCount.items.length-1? "Get Started" : "Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          )
        ],
      ),

    );
  }
}

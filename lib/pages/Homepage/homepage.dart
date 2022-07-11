import 'dart:async';
import './components/every_payment_pays_you_back.dart';
import './components/exciting_offers_on_brands.dart';
import './components/exclusive_cred_cash.dart';
import './components/offer_with_cred_pay.dart';
import './components/staycations_for_you.dart';
import './components/explore_button.dart';
import './components/chips_widget.dart';
import './components/rewards_widget.dart';
import '../Homepage/components/constants.dart';
import '../Homepage/components/custom_app_bar.dart';
import '../Homepage/components/refer_and_earn.dart';
import '../Homepage/components/upcoming_bills.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  final _duration = const Duration(milliseconds: 650);
  late AnimationController controller = AnimationController(vsync: this, duration: _duration);
  late Animation<double> animation = Tween<double>(begin: 0, end: 180).animate(controller);
  late AnimationController controller2 = AnimationController(vsync: this, duration: _duration);
  late Animation<double> animation2 = Tween<double>(begin: 180, end: 110).animate(controller2);
  String chipTitle = "CRED Cash unlocked";
  late double width;
  late Animation<double> _presentAnimation;

  @override
  void initState() {
    super.initState();

    _presentAnimation = animation;
    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Timer(const Duration(milliseconds: 2000), () {
          setState(() {
            controller.dispose();
            chipTitle = "\u{20B9}2,50,000";
            _presentAnimation = animation2;
            controller2.forward();
          });
        });
      }
    });

    animation2.addStatusListener((status) {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(23, 10, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBar(),
                    const SizedBox(
                      height: 45,
                    ),
                    const Text("welcome, Alex", style: TextStyle(color: Colors.white, fontSize: 22),),
                    const SizedBox(height: 10,),
                    const Text("explore and claim", style: TextStyle(color: Color.fromRGBO(96, 96, 96, 1), fontSize: 14.5, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    const Text("the membership perks reserved for you", style: TextStyle(color: Color.fromRGBO(96, 96, 96, 1), fontSize: 14.5, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 25,),
                    
                    
                    SizedBox(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          animatedChip(),
                          const SizedBox(width: 10,),
                          const ChipsWidget(title: "89,448"),
                          const SizedBox(width: 10,),
                          const ChipsWidget(title: "0"),
                          const SizedBox(width: 10,),
                          const ChipsWidget(title: "1"),
                        ],
                      ),
                    ),



                    const SizedBox(height: 40,),

                    upcomingBillsTitleWidget(),
                    const SizedBox(height: 24,),
                    const UpcomingBills(),
                    const SizedBox(height: 45,),



                    styledHeading("REFER AND EARN"),
                    const SizedBox(height: 18,),
                    const ReferAndEarn(),
                    const SizedBox(height: 45,),
                    
                    jackpotRewardsTitle(),
                    const SizedBox(height: 15,),
                    jackpotRewardsWidget(),
                    const SizedBox(height: 45,),
                    


                    const ExclusiveAccessCredCashWid(),
                    const SizedBox(height: 15,),
                    const ExploreButton(title: "Explore now", width: 135.0),
                    const SizedBox(height: 45,),


                    styledHeading("TAP TO GET NOTIFIED"),
                    const SizedBox(height: 15,),
                    centeredMainImageWid("images/homepage/tap_to_get_notified.png"),
                    const SizedBox(height: 45,),
                    

                    styledHeading("NOW LIVE ON CRED TRAVEL"),
                    const SizedBox(height: 15,),
                    centeredMainImageWid("images/homepage/cred_travel.png"),
                    const SizedBox(height: 45,),

                    

                    const EveryPaymentPaysYouBack(),
                    const SizedBox(height: 15,),
                    const ExploreButton(title: "Explore offers", width: 150.0),
                    const SizedBox(height: 45,),

                    styledHeading("UPTO 50% OFF WITH CRED PAY"),
                    const SizedBox(height: 15,),
                    const OfferWithCredPay(),
                    const SizedBox(height: 45,),

                    styledHeading("STAYCATIONS FOR YOU"),
                    const SizedBox(height: 15,),
                    const StaycationsForYou(),
                    const SizedBox(height: 45),
                    
                    styledHeading("EXCITING OFFERS ON BRANDS"),
                    const SizedBox(height: 15,),
                    const ExcitingOffersOnBrands(),
                    const SizedBox(height: 115,),
                  ],
                ),
              ),
              const Image(image: AssetImage("images/homepage/explore_cred_bottom_pic.png"),),
            ],
          ),
        ),
      ),
    );
  }



  Widget animatedChip() {
    return AnimatedBuilder(
        animation: _presentAnimation,
        builder: (BuildContext context, _) {
          return Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 50),
                width: _presentAnimation.value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(40, 40, 43, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 7, 13, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        chipTitle,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 3,
                child: Container(
                  height: 21,
                  width: 21,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: const Image(
                    image: AssetImage("images/homepage/dollar.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          );
        });
  }


  Widget upcomingBillsTitleWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "UPCOMING BILLS",
          style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: 20,
          width: 49,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
          child: const Text(
            "View all",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }


  Widget styledHeading(String title) {
    return Text(
      title,
      style: const TextStyle(
      color: Colors.grey,
      letterSpacing: 2,
      fontWeight: FontWeight.bold),
    );
  }


  Widget jackpotRewardsTitle() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: const Text(
        "jackpot rewards expiring today",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }


  Widget jackpotRewardsWidget() {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: JackpotRewardsData.amount.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
            RewardsWidget(index: index),
            const SizedBox(
              width: 15,
            ),
          ],
        );
      }),
    );
  }


  Widget centeredMainImageWid(String imageTitle) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.88,
      child: Image(
        image: AssetImage(imageTitle),
        fit: BoxFit.fitWidth,
      ),
    );
  }

}

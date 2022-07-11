import 'package:flutter/material.dart';
import './constants.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  bool _isHorizontal = true;

  @override
  Widget build(BuildContext context) {

    // print(ExploreData.explore[0]);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              const Text("explore", style: TextStyle(color: Color.fromRGBO(105,105,105,1), fontSize: 14, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("CRED", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isHorizontal = !_isHorizontal;
                          });
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                            const AnimatedPositioned(
                              left: 3,
                              // left: 21
                              child: Image(image: AssetImage("images/explore_page/navigator.png"),),
                              duration: const Duration(milliseconds: 100),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 30,),
                      Container(
                        height: 20,
                        width: 22,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Center(child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 18,),),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30,),


              verticalView("MONEY"),
              const SizedBox(height: 21.5,),
              verticalView("BENEFITS"),
              const SizedBox(height: 21.5,),
              verticalView("BILLS AND PAYMENTS"),
              const SizedBox(height: 21.5,),
              verticalView("SHOP"),
              const SizedBox(height: 21.5,),
              verticalView("OTHERS"),
                
              
            ],
          ),
        ),
      )
    );
  }



  Widget verticalView(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ExploreData.explore[0][category][0]["category"],
          style: const TextStyle(
          color: Color.fromRGBO(105, 105, 105, 1),
          fontWeight: FontWeight.bold,
          fontSize: 14.5),
        ),
        ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: ExploreData.explore[0][category].length,
                      itemBuilder: (BuildContext context, int index){
                        return Column(
                          children: [
                            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blueGrey),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(6.5),
                                        child: Image(image: AssetImage(ExploreData.explore[0][category][index]["image"]),),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 24,),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(ExploreData.explore[0][category][index]["title"], style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                                      const SizedBox(height: 5,),
                                      Text(ExploreData.explore[0][category][index]["subTitle"], style: TextStyle(color: Colors.grey, fontSize: 13),),
                                    ],
                                  ),
                                ),  
                              ],
                            // ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                          ],
                        );
                      }
                    ),
      ],
    );
  }
}
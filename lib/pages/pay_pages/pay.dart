import 'package:cred/pages/pay_pages/constants.dart';
import 'package:cred/pages/pay_pages/your_bills.dart';
import 'package:flutter/material.dart';


class PayPage extends StatefulWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.5,
                child: const Text("home for all your payments", style: TextStyle(color: Colors.white, fontSize: 22.7,),),),
              const SizedBox(height: 75,),
              const Text("YOUR BILLS", style: TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              const YourBills(),

              const SizedBox(height: 18,),
              Container(
                height: 49.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:const [
                        SizedBox(width: 10,),
                        Text("special offers for you", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.only(right: 5.5),
                      child: Image(image: AssetImage("images/pay_page/offer_percent_icon.png"),),
                    ),
                    // const SizedBox(width: 1,),
                  ],
                ),
              ),

              const SizedBox(height: 45,),
              const Text("YOUR PAYMENT DRAFTS", style: TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                  return Row(
                    children: [
                      Container(
                        height: 150,
                        color: const Color.fromRGBO(23, 23, 23, 1),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("broadband bill", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),
                                      Text("Spectra Broadband", style: TextStyle(color: Colors.white, fontSize: 14),),
                                    ],
                                  ),

                                  const SizedBox(width: 130,),

                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(52, 52, 52, 1),
                                    ),
                                    child: const Center(child: Image(image: AssetImage("images/pay_page/router_icon.png"),),),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 35,),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(23, 13, 23, 13),
                                      child: Text("Continue", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ),

                                  const SizedBox(width: 25,),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                      child: const Text("Dismiss", style: TextStyle(color: Colors.white, fontSize: 13),),  
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                    ],
                  );
                }),
              ),

              const SizedBox(height: 40,),
              const Text("RENT AND EDUCATION", style: TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.bold),),
              const SizedBox(height: 25,),

              Container(
                color: const Color.fromRGBO(27, 18, 18, 1),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Image(image: AssetImage("images/pay_page/rent_payment.png"),),
                      const SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("rent payment", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text("PAY YOUR RENT. WIN REWARDS.", style: TextStyle(color: Color.fromRGBO(255,215,0,1), fontSize: 11, letterSpacing: 1.5),),
                        ],
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_right_alt, color: Colors.white, size: 30,),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
              
              const SizedBox(height: 30,),

              amentitiesListViewWid("RENT AND EDUCATION"),
              amentitiesListViewWid("TELECOM AND RECHARGES"),
              amentitiesListViewWid("HOUSEHOLD AND MORE"),
            ],
          ),
        ),
      ),
    );
  }



  Widget amentitiesListViewWid(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(category, style: const TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.bold),),        
        const SizedBox(height: 20,),
        SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: PayPageConstantData.payUsingCred[0][category].length,
                      itemBuilder: (BuildContext context, int index){
                        return Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: const Color.fromRGBO(23, 23, 23, 1),
                                  height: 45,
                                  width: 45,
                                  child: Image(image: AssetImage(PayPageConstantData.payUsingCred[0][category][index]["image"],), fit: BoxFit.cover,),
                                ),
                                const SizedBox(height: 18,),
                                SizedBox(
                                  width: 80,
                                  child: Text(PayPageConstantData.payUsingCred[0][category][index]["title"], textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 13),),),
                              ],
                            ),
                            const SizedBox(width: 20,),
                          ],
                        );
                    },),
                  ),
      ],
    );
  }


}
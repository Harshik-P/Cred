import 'package:flutter/material.dart';


class WelcomeCard extends StatelessWidget {
  final List<String> cardDetails;
  const WelcomeCard({ Key? key, required this.cardDetails }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 120,
            width: 120,
            child: Image(image: AssetImage(cardDetails[3]), fit: BoxFit.cover,)),
            const SizedBox(height: 70,),
            Container(
              margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cardDetails[0], style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    Text(cardDetails[1], style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.55,
                      child: Text(cardDetails[2], style: const TextStyle(color: Colors.grey, fontSize: 15),)
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
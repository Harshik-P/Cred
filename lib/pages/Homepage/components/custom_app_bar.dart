import 'package:flutter/material.dart';


class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: 45,
                  color: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: const Image(image: AssetImage("images/homepage/profile_photo.png"), fit: BoxFit.cover,),
                  ),
                ),
              ),
      
    
              Container(
                height: 40,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color.fromRGBO(72, 72, 72, 1),),
                  color: const Color.fromRGBO(24, 24, 24, 1),
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.gif_box, color: Colors.white,),
                        Text("refer & earn", style: TextStyle(color: Colors.white, fontSize: 14),)
                      ],
                    ),
                  ),
                ),
            ],
    );
  }
}
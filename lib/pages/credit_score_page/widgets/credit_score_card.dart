import '../../../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CreditScoreCard extends StatelessWidget {
  const CreditScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(padding),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border.all(
                color: subheadingColor,
              ),
            ),
            padding: const EdgeInsets.all(padding * 2),
            constraints: const BoxConstraints(
              maxHeight: 220,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 45,
                      startAngle: 225,
                      animation: true,
                      percent: (508 / 600) * 0.75,
                      center: const Text(
                        "808",
                        style: headingStyle,
                      ),
                      progressColor: const Color.fromARGB(255, 130, 245, 99),
                      backgroundColor: Colors.black,
                      backgroundWidth: 20,
                      lineWidth: 10,
                      footer: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "300",
                            style: TextStyle(
                              color: subheadingColor,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: padding * 4,
                          ),
                          Text(
                            "900",
                            style: TextStyle(
                              color: subheadingColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: padding,
                    ),
                    const Text(
                      "Some Logo",
                      style: subheadingStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  width: padding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "GOOD",
                        style: TextStyle(
                          color: Color.fromARGB(255, 130, 245, 99),
                        ),
                      ),
                      const SizedBox(
                        height: padding / 2,
                      ),
                      const SizedBox(
                        height: 50,
                        child: Text(
                          "review activity on 2 cards and 2 loans",
                          style: TextStyle(
                            color: headingColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Text(
                        "updated on 18 Feb '22",
                        style: TextStyle(
                          color: subheadingColor,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: padding,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "View Report",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.black,
                          ),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 34),
                border: Border(
                  bottom: BorderSide(
                    color: subheadingColor,
                  ),
                  left: BorderSide(
                    color: subheadingColor,
                  ),
                  right: BorderSide(
                    color: subheadingColor,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.green,
                      ),
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(2),
                      ),
                      minimumSize: MaterialStateProperty.all(
                        const Size(0, 0),
                      ),
                    ),
                  ),
                  const Text(
                    "CREDIT SCORE REFRESH AVAILABLE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

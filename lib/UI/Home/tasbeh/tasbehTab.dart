import 'package:flutter/material.dart';

class tasbehTab extends StatefulWidget {
  @override
  State<tasbehTab> createState() => _tasbehTabState();
}

class _tasbehTabState extends State<tasbehTab> with TickerProviderStateMixin {
  double sebhaAngle = 0;
  List<String> tasbehat = ["سبحان الله", "استغفر الله", "الحمدلله"];
  int index = 0;
  int counter = 0;

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        value: sebhaAngle,
        duration: const Duration(milliseconds: 2000),
        vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(),
        Container(
          padding: EdgeInsets.only(left: 40 ,top: 20),
            child: Image.asset("assets/images/sebah head.png")
        ),
        InkWell(
          borderRadius: BorderRadius.circular(120),
          onTap: () {
            setState(() {
              sebhaCounter();
              sebhaAngle += 12;
            });
          },
          child: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) => Transform.rotate(
              angle: sebhaAngle,
              child: Image.asset("assets/images/body of seb7a.png"),
            ),
          )
        ),
        Container(
            margin: const EdgeInsets.only(top: 50),
            child: const Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 30),
            )),
        Container(
          height: 70,
          width: 70,
          // color: const ,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffB7935F),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "$counter",
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  backgroundColor: MaterialStateProperty.all(
                    (const Color(0xffB7935F)),
                  )),
              onPressed: () {
                setState(() {
                  sebhaAngle += 12;
                  sebhaCounter();
                  changeTasbeh();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  tasbehat[index],
                  style: const TextStyle(fontSize: 20),
                ),
              )),
        )
      ],
    );
  }

  void sebhaCounter() {
    if (counter == 33) {
      counter = 0;
    } else {
      counter++;
    }
    changeTasbeh();
  }

  void changeTasbeh() {
    if (counter==33){
      index ++;
      if(index==3){
        index = 0;
      }
      counter = 0;
    }
  }
}

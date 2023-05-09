import 'package:flutter/material.dart';

class tasbehTab extends StatefulWidget {
  @override
  State<tasbehTab> createState() => _tasbehTabState();
}

class _tasbehTabState extends State<tasbehTab> {
  double sebha_angle=0;
  List<String> tasbehat = ["سبحان الله", "استغفر الله", "الحمدلله"];
  int index = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/main_background.png"),
                  fit: BoxFit.fill)),
        ),
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50, left: 105),
                child: Image.asset("assets/images/sebha_head.png")),
            InkWell(
              onTap: (){
                  sebha_angle+=1;
                  setState(() {});
              },
              child: Transform.rotate(
                angle: sebha_angle,
                child: Container(
                  margin: const EdgeInsets.only(top: 130),
                    child: Image.asset("assets/images/sebha_body.png")
                ),
              ),
            ),
          ],
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
                  sebhaCounter();
                  changetasbeh();
                });
              },
              child: Text(
                tasbehat[index],
                style: const TextStyle(fontSize: 20),
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
  }

  void changetasbeh() {
    if (counter == 0 && index < tasbehat.length) {
      index++;
    }else if(index==2){
      index=0;
    }
  }
}

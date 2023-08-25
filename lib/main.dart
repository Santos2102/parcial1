import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Align(
          child: Stack(
            children: [
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 46, right: 25, left: 25),
                        child: topRow(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 115, top: 20),
                        child: Text(
                          "Good Afternoon, Mike!",
                          style: TextStyle(
                            color: Color(0xFF371B34),
                            fontSize: 26,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w500,
                            height: 1.23,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26, right: 131, left: 25),
                        child: Text(
                          'How are you feeling today ?',
                          style: TextStyle(
                            color: Color(0xFF371B34),
                            fontSize: 16,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      cuadritos(),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 26),
                        child: cuadrogrande(),
                      ),
                      grises(),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, left: 25, right: 25),
                        child: grandegris(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26, left: 25, right: 25),
                        child: grandeverde(),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                          BoxShadow(
                              color: Color(0x1C000000),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                      ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class grandeverde extends StatelessWidget {
  const grandeverde({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 151,
      decoration: ShapeDecoration(
          color: Color(0xFF55A06F),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
          ),
      ),
    );
  }
}

class grandegris extends StatelessWidget {
  const grandegris({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 324,
      height: 79,
      decoration: ShapeDecoration(
          color: Color(0xFFF8F6F6),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFF4F4F4),
              ),
              borderRadius: BorderRadius.circular(16),
          ),
      ),
    );
  }
}

class grises extends StatelessWidget {
  const grises({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 26, left: 30, right: 15),
          child: cuadrogris(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 26),
          child: cuadrogris(),
        )
      ],
    );
  }
}

class cuadrogris extends StatelessWidget {
  const cuadrogris({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 62,
      decoration: ShapeDecoration(
          color: Color(0xFFF4F3F1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
          ),
      ),
    );
  }
}

class cuadrogrande extends StatelessWidget {
  const cuadrogrande({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 151,
      decoration: ShapeDecoration(
          color: Color(0xFFFDF3E6),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
          ),
      ),
    );
  }
}

class cuadritos extends StatelessWidget {
  const cuadritos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
      width : MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, right: 24),
                child: cuadrante(color: Color(0xFFEF5DA8), texto: Text("Happy")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 24),
                child: cuadrante(color: Color(0xFFAEAFF7), texto: Text("Calm")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 24),
                child: cuadrante(color: Color(0xFFA0E3E2), texto: Text("Manic")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 24),
                child: cuadrante(color: Color(0xFFF09E54), texto: Text("Angry")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 25),
                child: cuadrante(color: Color(0xFFC2F2A5), texto: Text("Happy")),
              ),
            ],
          ),
        )
          ],    
        ),
      ),
    ),
        
      ],
    );
  }
}

class cuadrante extends StatelessWidget {
  final Color color;
    final Text texto;
  const cuadrante({
    required this.color,
    required this.texto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 59.20,
          height: 62.06,
          decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
              ),
          ),
        ),
        texto
      ],
    );
  }
}

class topRow extends StatelessWidget {
  const topRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Elipse1(),
        Elipse1()
      ],
    );
  }
}

class Elipse1 extends StatelessWidget {
  const Elipse1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: ShapeDecoration(
          image: DecorationImage(
              image: NetworkImage("https://via.placeholder.com/35x35"),
              fit: BoxFit.fill,
          ),
          shape: OvalBorder(
              side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0x77F09E54),
              ),
          ),
      ),
    );
  }
}

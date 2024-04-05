import 'package:flutter/material.dart';

class GechirmeliHasap extends StatefulWidget {
  const GechirmeliHasap({Key? key}) : super(key: key);

  @override
  State<GechirmeliHasap> createState() => _GechirmeliHasapState();
}

class _GechirmeliHasapState extends State<GechirmeliHasap> {

  TextEditingController input1gechirmeli = TextEditingController();
  TextEditingController input2gechirmeli = TextEditingController();

  double _counter = 0;

  void _gechirmeli_hasapla() {
    setState(() {
      double num1gechirmeli = double.parse(input1gechirmeli.text);
      double num2gechirmeli = double.parse(input2gechirmeli.text);
      _counter = num1gechirmeli + num1gechirmeli * (num2gechirmeli/80);
    });
  }

  @override
  Widget build(BuildContext context) {

    int size = 25;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFFBEC6DA),
                  Color(0xFFDCE5E8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [ 0.0,0.6],
                tileMode: TileMode.clamp
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Text("Aljak summany girizmeli",
                    style: TextStyle(color: Colors.black45, fontSize: size.toDouble(), fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white, fontSize: size.toDouble(), fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                      controller: input1gechirmeli,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Sany giriz',
                          hintStyle: TextStyle(color: Colors.black54),
                          filled: true,
                          fillColor: Color(0xFFC1CCD0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          )
                      ),
                    ),
                  ),
                ],
              ),
              Divider(color: Colors.black54,height: 30, indent: 20, endIndent: 20,thickness: 2),
              Column(
                children: [
                  Text("Prosenty girizmeli",
                    style: TextStyle(color: Colors.black45, fontSize: size.toDouble(), fontWeight: FontWeight.w500), textAlign: TextAlign.center, ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white, fontSize: size.toDouble(), fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                      controller: input2gechirmeli,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Sany giriz',
                          hintStyle: TextStyle(color: Colors.black54, fontSize: size.toDouble()),
                          filled: true,
                          fillColor: Color(0xFFC1CCD0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          )
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("${_counter == 0 ? "Sanlary giriz" : "${_counter.round()} manat"}", style: TextStyle(color: Colors.white70, fontSize: 25, fontWeight: FontWeight.w500),)),
              Container(
                margin: EdgeInsets.fromLTRB(100, 20, 100, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      minimumSize: const Size(200, 60)),
                  onPressed: () {
                    _gechirmeli_hasapla();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.touch_app_outlined, size: 30,),
                      Text('Hasapla', style: TextStyle(fontSize: size.toDouble()),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

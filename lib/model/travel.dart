import 'package:flutter/material.dart';

class Travel {
  String name;
  String address;
  String img;
  Color? col;

  Travel(this.name, this.address, this.img, this.col);

  static List<Travel> generatedTravelList() {
    return [
      Travel('Nilgiri', "Bandarban", 'images/nilgiri.jpg', Colors.white),
      Travel('Jaflong', "Sylhet", 'images/jfln.jpg', Colors.white),
      Travel('Kawran Bazar', "Dhaka", 'images/kawran.jpg', Colors.white)
    ];
  }

  static List<Travel> mostpoluparTravelList() {
    return [
      Travel('Nilgiri', "Bandarban", 'images/nilgiri.jpg', Colors.white),
      Travel('Jaflong', "Sylhet", 'images/jfln.jpg', Colors.white),
      Travel('Kawran Bazar', "Dhaka", 'images/kawran.jpg', Colors.white),
      Travel('Diamond Beach', "Bali", 'images/jfln.jpg', Colors.white),
      Travel('Goa Sea beach', "Goa", 'images/goa.jpg', Colors.white),
      Travel('Kuakata', "Patuakhali", 'images/kuakata.jpg', Colors.white),
    ];
  }
}

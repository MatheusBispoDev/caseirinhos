import 'package:caseirinhos/app/models/cakes.dart';
import 'package:caseirinhos/app/models/contacts.dart';

class Sales {
  String? codSales;
  Contact client;
  DateTime date;
  List<Cake> cakes;
  double value;
  double? disconts;
  double? freight;

  Sales({this.codSales, required this.client, required this.date, required this.cakes, required this.value, this.disconts, this.freight});


  static List<Sales> getSales(){
    return <Sales>[
      Sales(client: Contact.getContactExemple(), date: DateTime.now(), cakes: Cake.getCake(), value: 50.0),
      Sales(client: Contact.getContactExemple(), date: DateTime.now(), cakes: Cake.getCake(), value: 150.0),
      Sales(client: Contact.getContactExemple(), date: DateTime.now(), cakes: Cake.getCake(), value: 250.0),
      Sales(client: Contact.getContactExemple(), date: DateTime.now(), cakes: Cake.getCake(), value: 350.0),
      Sales(client: Contact.getContactExemple(), date: DateTime.now(), cakes: Cake.getCake(), value: 450.0),
    ];
  }
}
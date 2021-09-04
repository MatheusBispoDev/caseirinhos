

import 'package:caseirinhos/app/models/address.dart';

class Contact {
  String name;
  String phone;
  String email;
  String image;
  Adress adress;

  Contact(
      {required this.name,
      required this.phone,
      required this.email,
      this.image = '',
      required this.adress,
      });

  static getContactExemple() {
    return Contact(
          name: 'Matheus',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria'),);
  }

  static List<Contact> getContacts() {
    return <Contact>[
      Contact(
          name: 'Matheus',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria'),),
      Contact(
          name: 'Lucas',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
      Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),

                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    Contact(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
              
    ];
  }
}

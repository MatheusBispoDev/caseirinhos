import 'package:caseirinhos/app/models/address.dart';

class ContactLocal {
  String name;
  String phone;
  String email;
  String image;
  Adress adress;

  ContactLocal(
      {required this.name,
      required this.phone,
      required this.email,
      this.image = '',
      required this.adress,
      });

  static getContactExemple() {
    return ContactLocal(
          name: 'Matheus',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria'),);
  }

  static List<ContactLocal> getContacts() {
    return <ContactLocal>[
      ContactLocal(
          name: 'Matheus',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria'),),
      ContactLocal(
          name: 'Lucas',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
      ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),

                    ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    ContactLocal(
          name: 'Nice',
          phone: '97773-0082',
          email: 'theu.bispo@gmail.com',
          adress: Adress(
              road: 'Rua Dona Palmira',
              number: '292',
              district: 'Jd. Helena Maria')),
                    ContactLocal(
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

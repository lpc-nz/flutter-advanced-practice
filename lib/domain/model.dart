class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class Customer {
  String id;
  String name;
  int numberOfNotification;

  Customer(this.id, this.name, this.numberOfNotification);
}

class Contact {
  String phoneNumber;
  String link;
  String email;

  Contact(this.phoneNumber, this.link, this.email);
}

class Authentication {
  Customer customer;
  Contact contact;

  Authentication(this.customer, this.contact);
}

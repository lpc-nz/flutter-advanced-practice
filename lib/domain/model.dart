class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}

class Customers {
  String id;
  String name;
  int numberOfNotification;

  Customers(this.id, this.name, this.numberOfNotification);
}

class Contacts {
  String phoneNumber;
  String link;
  String email;

  Contacts(this.phoneNumber, this.link, this.email);
}

class Authentication {
  Customers? customer;
  Contacts? contact;

  Authentication(this.customer, this.contact);
}

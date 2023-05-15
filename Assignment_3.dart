/* 
  Ar G Ho, CSE 17, HSTU.
  youtube: www.youtube.com/iArgho
*/

class Car {
  static int numberOfCars = 0;
  late String brand;
  late String model;
  late int year;
  late double milesDriven;

  Car(this.brand, this.model, this.year) {
    milesDriven = 0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car("Mitsubisi", "Lancer", 2010);
  car1.drive(10000);

  Car car2 = Car("Honda", "CHR", 2015);
  car2.drive(5000);

  Car car3 = Car("Tata", "Nano", 2020);
  car3.drive(2000);

  print("The Specification of total ${Car.numberOfCars} cars are:");
  print(
      " ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} ${car1.getMilesDriven()} miles, ${car1.getAge()} years");
  print(
      " ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} ${car2.getMilesDriven()} miles, ${car2.getAge()} years");
  print(
      " ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} ${car3.getMilesDriven()} miles, ${car3.getAge()} years");
}

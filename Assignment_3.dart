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
  Car car1 = Car("Toyota", "Camry", 2010);
  car1.drive(10000);

  Car car2 = Car("Honda", "Civic", 2015);
  car2.drive(5000);

  Car car3 = Car("Ford", "Mustang", 2020);
  car3.drive(2000);

  print(
      "Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} ${car1.getMilesDriven()} miles driven, ${car1.getAge()} years old");
  print(
      "Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} ${car2.getMilesDriven()} miles driven, ${car2.getAge()} years old");
  print(
      "Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} ${car3.getMilesDriven()} miles driven, ${car3.getAge()} years old");

  print("Total number of cars created: ${Car.numberOfCars}");
}

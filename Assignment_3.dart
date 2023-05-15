/* 
  Ar G Ho, CSE 17, HSTU.
  youtube: www.youtube.com/iArgho
*/

// Car Class Declaration
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
} // Class Declaration Ends

//Main Function
void main() {
  //Car Objects
  Car car1 = Car("Mitsubisi", "Lancer", 2010);
  car1.drive(10000.5);

  Car car2 = Car("Honda", "CHR", 2015);
  car2.drive(5000);

  Car car3 = Car("Tata", "Nano", 2020);
  car3.drive(2000);

  //Total Number Of Cars
  print("The Specification of total ${Car.numberOfCars} cars are:");

  //Specification Of Each Car Objects
  print(
      " 1: Brand: ${car1.getBrand()}, Model: ${car1.getModel()}, Release Year: ${car1.getYear()}, Driven: ${car1.getMilesDriven()} miles, Age: ${car1.getAge()} years");
  print(
      " 2: Brand: ${car2.getBrand()}, Model: ${car2.getModel()}, Release Year: ${car2.getYear()}, Driven: ${car2.getMilesDriven()} miles, Age: ${car2.getAge()} years");
  print(
      " 3: Brand: ${car3.getBrand()}, Model: ${car3.getModel()}, Release Year: ${car3.getYear()}, Driven: ${car3.getMilesDriven()} miles, Age: ${car3.getAge()} years");
} //Main Function Ends



/*
Output:
The Specification of total 3 cars are:
 1: Brand: Mitsubisi, Model: Lancer, Release Year: 2010, Driven: 10000.5 miles, Age: 13 years
 2: Brand: Honda, Model: CHR, Release Year: 2015, Driven: 5000.0 miles, Age: 8 years
 3: Brand: Tata, Model: Nano, Release Year: 2020, Driven: 2000.0 miles, Age: 3 years
 */

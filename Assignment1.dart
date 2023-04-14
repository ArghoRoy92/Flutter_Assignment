void main()
 {
  List<String> phoneNumber = ['+88', '+8801768131685', '01768171985', '01768111286', '01768131685'];
  
  String phoneNumberToRemove='+88';

  int index = phoneNumber.indexOf(phoneNumberToRemove);
  
  if (index!= -1) {
    phoneNumber.removeAt(index);
  }

  print(phoneNumber);
}


//Output: [+8801768131685, 01768171985, 01768111286, 01768131685]
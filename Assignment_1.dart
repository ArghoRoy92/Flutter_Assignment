/// Ar G Ho aka iArgho, HSTU, CSE 17.
/// phoneNumber = [+88, 01768131685, 01768171985, 01768111286, 01768131685]
/// print full number with country code

void main() {
  List<String> phoneNumber = [
    '+88',
    '01768131685',
    '01768171985',
    '01768111286',
    '01768131685',
  ];

  String countryCode = '+88';
  int countryCodeIndex = phoneNumber.indexOf(countryCode);

  int listLength = phoneNumber.length;

  for (int i = 1; i < listLength; i++) {
    print(phoneNumber[countryCodeIndex] + phoneNumber[i]);
  }
}

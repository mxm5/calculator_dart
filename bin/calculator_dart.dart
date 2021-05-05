import 'dart:io';

void main(List<String> arguments) {
  var repeat = true;
  do {
    print('\x1B[38;2;252;127;0m$banner');
    stdout.write('Enter the first number : ');
    var firstNum = stdin.readLineSync();
    stdout.write(firstNum + '\n');
    // (127,255,0
    stdout.write('Enter the second number : ');

    var secondNumber = stdin.readLineSync();

    stdout.write(secondNumber + '\n');

    num n1 = double.parse(firstNum.toString());
    num n2 = double.parse(secondNumber.toString());

    print('select operation');
    print(' [1] for adding first number and second number ');
    print(' [2] for subtractiong first number from second number ');
    print(' [3] for multipling first number and second number ');
    print(' [4] for deviding first number to second number ');
    var operationType = stdin.readLineSync();

    stdout.write(operationType + '\n');

    print(calculation(n1, n2, operationType.toString()));
    print('done ');
    print('do you want to try again ');
    print('[y/n]');
    var answer = stdin.readLineSync();
    if (answer.toLowerCase() != 'y') {
      repeat = false;
    }
    print("\x1B[2J\x1B[0;0H");
  } while (repeat);
  return null;
}

const String banner = r"""
    .___              __                  .__               .__          __                
  __| _/____ ________/  |_    ____ _____  |  |   ____  __ __|  | _____ _/  |_  ___________ 
 / __ |\__  \\_  __ \   __\ _/ ___\\__  \ |  | _/ ___\|  |  \  | \__  \\   __\/  _ \_  __ \
/ /_/ | / __ \|  | \/|  |   \  \___ / __ \|  |_\  \___|  |  /  |__/ __ \|  | (  <_> )  | \/
\____ |(____  /__|   |__|    \___  >____  /____/\___  >____/|____(____  /__|  \____/|__|   
     \/     \/                   \/     \/          \/                \/                   
""";

String calculation(n1, n2, op) {
  switch (op) {
    case '1':
      return (n1 + n2).toString();
      break;
    case '2':
      return (n1 - n2).toString();
      break;
    case '3':
      return (n1 * n2).toString();
      break;
    case '4':
      return (n1 / n2).toString();
      break;

    default:
      return 'not valid operation number must be 1,2,3 or 4';
  }
}

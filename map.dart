import 'dart:io';

void main() {
  Map midicine = {};
  while (true) {
    print('.................................');
    print('press 1 for add midicine');
    print('press 2 for remove midicine');
    print('press 3 for updat midicine');
    print('press 4 for open list of drug');
    print('press 5 for Exet the App');
    print('.................................');
    stdout.write('enter your choice\n ');
    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        stdout.write('Enter the name of midicine to add\n');
        String? add = stdin.readLineSync();
        stdout.write('Enter the cost of midicine\n');
        var add2 = stdin.readLineSync();
        var addd = add?.toUpperCase();
        var add3 = int.parse(add2!);
        midicine.addAll({addd: add3});
        print('........................');
        print('dryg added successfully');

        break;

      case '2':
        if (midicine.isEmpty) {
          print('........................');
          print('No drug to remove');
          print('........................');
        } else {
          print('........................................................');
          stdout.write(
              'Enter the name of drug to delete from the list\n');
          print('.........................................................');
          midicine.forEach((key, value) {
            print('$key = $value AFG');
    });
            var remove = stdin.readLineSync();
            var removeee = remove?.toUpperCase();
            midicine.remove(removeee);
        }
        break;
      case '3':
        if (midicine.isEmpty) {
          print('........................');
          print('No drug to update');
        } else {
          midicine.forEach((key, value) {
            print('$key = $value');
          });
          print('Enter the name of drug to update the coast');
          var up = stdin.readLineSync();
          var upp = up?.toUpperCase();
          print("Entr the cost new coast of drug");
          var up2 = stdin.readLineSync();
          var up222 = int.parse(up2!);
          print('list of drug');
          midicine.update(upp, (midicine) => up222);
          midicine.forEach((key, value) {
            print('$key = $value AFG\n');
          });
        }
        break;
      case '4':
        if (midicine.isEmpty) {
          print('........................');
          print("there is no drugs (●'◡'●)");
          print('........................');
        } else {
          print('the list of drug\n');
          midicine.forEach((key, value) {
            print('$key = $value AFG');
            print('------------------');
          });
        }

        break;
      case '5':
        print('exit the programe');
        return;
      default:
        print('');

    }
  }
}


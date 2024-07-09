mixin Strong{
  final double strenghtLevel = 1500.99;
}

mixin QuickRunner{
  void runQuick(){
    print("runnnnnnn!");
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall{
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner{}

class kid with QuickRunner {}

void main(){
   var player = Player(team: Team.red);
   player.runQuick(); // runnnnnnn!
}
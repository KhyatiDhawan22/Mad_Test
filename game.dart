//You are building a game where players can choose between different character classes, such as Warrior, Mage, and Rogue. Each character class has unique abilities and attributes.
//Implement the character classes using inheritance, with a base class Character and subclasses Warrior, Mage, and Rogue. Ensure each subclass has its own set of abilities and characteristics.
//Creating a logger mixin too , using it in various classes throughtout


//logger mixin
mixin Logger{
  void logDebug(String message){
    print('DEBUG: $message');
  }
  void logInfo(String message){
    print('INFO: $message');
  }
  void logWarning(String message){
    print('WARNING: $message');
  }
  void logErrror(String message){
    print('ERROR: $message');
  }
}
//base class : Character class
class Character{
  String name;
  int health;

  Character(this.name,this.health);
  void displayInfo(){
    print('Name: $name , Health: $health');
  }
}

//Warrrior has Function : attack(), 
//Mage has Function castSpell(),
//Rogue has function sneakAttack(),

//warrior extending base class and the logger mixin
class Warrior extends Character with Logger {
  int strength;
  Warrior(String name, int health , this.strength):super(name, health);
  //super is taking name and heath from the character class(Parent)

  void attack(){
    logInfo('Warrior ${name} is attacking with strength $strength!');
  }
}

//Mage extending base class and the logger mixin
class Mage extends Character with Logger{
  int magicPower;
  Mage(String name, int health, this.magicPower):super(name,health); 
  void castSpell(){
    logInfo('Mage ${name} is casting a spell with magic power $magicPower!');
  }
}
//Rogue extending base class and the logger mixin
class Rogue extends Character with Logger{
  int agility; //to move quickly
  Rogue(String name, int health, this.agility):super(name,health);

  void sneakAttack(){
    logInfo('Rogue ${name} is performing a sneak attack with agility $agility');
  }
}

//The main function
void main(){
  var warrior = Warrior('K', 100, 20);
  warrior.displayInfo();
  warrior.attack();

  var mage = Mage('K', 80, 30);
  mage.displayInfo();
  mage.castSpell();

  var rogue = Rogue('K', 90, 25);
  rogue.displayInfo();
  rogue.sneakAttack();
}

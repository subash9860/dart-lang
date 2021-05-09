class Bear {
  int numberOfFish;
  int hourOfSleep;
  int weightGain;

  Bear(this.numberOfFish, this.hourOfSleep,this.weightGain); // Constructor

  int eatFish(int numberOfFish) => numberOfFish;
  int sleepAfterEatingFish(int hoursOfSleep) => hourOfSleep;
  int weightGaining(int numberOfFish, int hourOfSleep) =>
      weightGain = numberOfFish * hourOfSleep;
}

main() {
  var fatherBear = Bear(6, 10,1);
  print(
      "Father bear eats ${fatherBear.eatFish(fatherBear.numberOfFish)} fishes .\n And he sleeps for ${fatherBear.sleepAfterEatingFish(fatherBear.hourOfSleep)} hours.\n And he gain ${fatherBear.weightGaining(fatherBear.numberOfFish,fatherBear.hourOfSleep)} kg of weight.");
}

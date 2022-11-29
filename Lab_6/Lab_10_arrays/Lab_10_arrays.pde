int[] numberArr;
int[] evenNumbersArr;
int[] randomIntNumbersArr;
int sum = 0;
int x = 25;
String toString = "";
int count = 1;
int number = 6;



void setup(){
  size(700, 500);
  background(0);
  stroke(255);
  textSize(15);
  numberArr = new int[10];
  evenNumbersArr = new int[10];
  randomIntNumbersArr = new int[20];
  for(int i = 0; i < numberArr.length; i++){
    numberArr[i] = int(random(10, 20));
    sum += numberArr[i];
  }
  for(int i = 0; i < evenNumbersArr.length; i++){
    evenNumbersArr[i] = count * 2;
    count++;
  }
  for(int i = 0; i < randomIntNumbersArr.length; i++){
    randomIntNumbersArr[i] = int(random(-15, 15));
  }
  toString = arrayToString(numberArr, " ");
  print(randomIntNumbersArr.length);
}

void shuffle( int[] numberArr ){
  int index1 = 0;
  int index2 = 0;
  int temp;
  for(int i = 0; i < 100; i++){
    do{
      index1 = int(random(0, numberArr.length));
      index2 = int(random(0, numberArr.length));
    }
    while(index1 == index2);
    temp = numberArr[index1];
    numberArr[index1] = numberArr[index2];
    numberArr[index2] = temp;
  }
}

void draw(){
  background(0);
  text(toString + " -> " + sum, 10, x);
  line(0, 25, width, 30);
  numberArr = sort(numberArr);
  text(arrayToString(numberArr, " "), 10, x * 2);
  line(0, 50, width, 55);
  text(arrayToString(evenNumbersArr, " - "), 10, x * 3);
  text(arrayToString(randomIntNumbersArr, " x "), 10, x * 4);
  text("Average of the even numbers: " + nf(calculateAverage(evenNumbersArr), 1, 1), 10, x * 5);
  text("Average of the random numbers: " + nf(calculateAverage(randomIntNumbersArr), 1, 1), 10, x * 6);
  text("The largest element of the even numbers is: " + maxElement(evenNumbersArr), 10, x * 7);
  text("The largest element of the random numbers is: " + maxElement(randomIntNumbersArr), 10, x * 8);
  text("The smallest element of the even numbers is: " + nf(minElement(evenNumbersArr), 1, 1), 10, x * 9);
  text("The smallest element of the random numbers is: " + nf(minElement(randomIntNumbersArr), 1, 1), 10, x * 10);
  text("Amount of even numbers equal to " + number + " = " + countIfEqual(evenNumbersArr, number), 10, x * 11);
  text("Amount of random numbers equal to " + number + " = " + countIfEqual(randomIntNumbersArr, number), 10, x * 12);
  text("Amount of even numbers larger than " + number + " = " + countIfLarger(evenNumbersArr, number), 10, x * 13);
  text("Amount of random numbers larger than " + number + " = " + countIfLarger(randomIntNumbersArr, number), 10, x * 14);
  text("Amount of even numbers smaller than " + number + " = " + countIfSmaller(evenNumbersArr, number), 10, x * 15);
  text("Amount of random numbers smaller than " + number + " = " + countIfSmaller(randomIntNumbersArr, number), 10, x * 16);
  text("Amount of even numbers  eaules to max (" + maxElement(evenNumbersArr) + ") = " + countIfEqualMax(evenNumbersArr), 10, x * 17);
  text("Amount of random numbers eaules to max (" + maxElement(randomIntNumbersArr) + ") = " + countIfEqualMax(randomIntNumbersArr), 10, x * 18);
  shuffle(evenNumbersArr);
  text("Shuffled even numbers: " + arrayToString(evenNumbersArr, " - "), 10, x * 19);
  shuffle(randomIntNumbersArr);
  text("Shuffled random numbers: " + arrayToString(randomIntNumbersArr, " - "), 10, x * 20);
  noLoop();
}

String arrayToString(int[] numberArr, String separator){
  String toString = "";
  for(int i = 0; i < numberArr.length; i++){
    toString += numberArr[i];
      if(i < numberArr.length - 1){
        toString += separator;
      }
  }
  return toString;
}

float calculateAverage(int[] numberArr){
  float avg = 0;
  for(int i = 0; i < numberArr.length; i++){
    avg += int(numberArr[i]);
  }
  avg = avg / numberArr.length;
  return avg;
}

int maxElement(int[] numberArr){
  int max = numberArr[0];
  for(int i = 0; i < numberArr.length; i++){
    if(max < numberArr[i]){
      max = numberArr[i];
    }
  }
  return max;
}

int minElement(int[] numberArr){
  int min = numberArr[0];
  for(int i = 0; i < numberArr.length; i++){
    if(numberArr[i] < min){
      min = numberArr[i];
    }
  }
  return min;
}

int countIfEqual( int[] numberArr, int value ){
  int counter = 0;
    for(int i = 0; i < numberArr.length; i++){
      if(numberArr[i] == value){
        counter ++; 
      }
    }
  return counter;
}

int countIfLarger( int[] numberArr, int value ){
  int counter = 0;
    for(int i = 0; i < numberArr.length; i++){
      if(numberArr[i] > value){
        counter ++; 
      }
    }
  return counter;
}

int countIfSmaller( int[] numberArr, int value ){
  int counter = 0;
    for(int i = 0; i < numberArr.length; i++){
      if(numberArr[i] < value){
        counter ++; 
      }
    }
  return counter;
}

int countIfEqualMax( int[] numberArr){
  int counter = 0;
    for(int i = 0; i < numberArr.length; i++){
      if(maxElement(randomIntNumbersArr) == numberArr[i]){
        counter ++; 
      }
    }
  return counter;
}

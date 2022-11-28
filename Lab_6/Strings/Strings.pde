int[] numberArr;
int[] evenNumbersArr;
int[] randomIntNumbersArr;
int sum = 0;
int x = 20;
String toString = "";

void setup(){
  size(650, 450);
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
  for(int i = 0; i < evenNumbersArr.length; i+=2){
    evenNumbersArr[i] = i;
  }
  for(int i = 0; i < randomIntNumbersArr.length; i++){
    randomIntNumbersArr[i] = int(random(-15, 15));
  }
  toString = arrayToString(numberArr, " ");
}

void draw(){
  text(toString + "->" + sum, 10, 20);
  line(0, 25, width, 25);
  numberArr = sort(numberArr);
  text(arrayToString(numberArr, " "), 10, 45);
  line(0, 50, width, 50);
  text(arrayToString(evenNumbersArr, " - "), 10, 70);
  text(arrayToString(randomIntNumbersArr, " x "), 10, 95);
}

String arrayToString(int[] numberArr, String separator){
  String toString = "";
  for(int i = 0; i < numberArr.length; i++){
      toString += numberArr[i] + separator;
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

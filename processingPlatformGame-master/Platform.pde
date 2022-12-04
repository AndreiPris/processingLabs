class Platform{
  float w,h,x,y;
  String typeof;
  float halfWidth, halfHeight;

  Platform(float _x, float _y, float _w, float _h, String _typeof){
    w = _w;
    h = _h;
    x = _x;
    y = _y;
    typeof = _typeof;

    halfWidth = w/2;
    halfHeight = h/2;
  }

  void display(){
    fill(0,0,255);
    rect(x,y,w,h);
  }
}

class Timer{
  int startTime;
  int interval;

  Timer(int tempTime){
    interval = tempTime;
  }

  void start(){
    startTime = millis();
  }

boolean isFinished(){
    int elapsedTime = millis() - startTime;
    if(elapsedTime > interval){
      return true;
    }else{
      return false;
    }
  }
}

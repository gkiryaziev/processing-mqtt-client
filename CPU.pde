
class CPU {
  Temp temp() { 
    return new Temp();
  }
  CoreVolt coreVolt() { 
    return new CoreVolt();
  }
}

class Temp implements IEquipment {  
  public void subscribe(int qos) {
    client.subscribe("RPI1/CPU/TEMP", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/CPU/TEMP");
  }
  public void publish(String message, int qos) {
  }
}

class CoreVolt implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/CPU/CORE/VOLT", 0);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/CPU/CORE/VOLT");
  }
  public void publish(String message, int qos) {
  }
}
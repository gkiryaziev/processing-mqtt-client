
class System {
  MemoryTotal memoryTotal() { 
    return new MemoryTotal();
  }
  MemoryAvailable memoryAvailable() {
    return new MemoryAvailable();
  }
  MemoryFree memoryFree() {
    return new MemoryFree();
  }
  LED0 led0() {
    return new LED0();
  }
  LED1 led1() {
    return new LED1();
  }
}

class MemoryTotal implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/SYSTEM/MEMORY/TOTAL", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/SYSTEM/MEMORY/TOTAL");
  }
  public void publish(String message, int qos) {
  }
}

class MemoryAvailable implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/SYSTEM/MEMORY/AVAILABLE", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/SYSTEM/MEMORY/AVAILABLE");
  }
  public void publish(String message, int qos) {
  }
}

class MemoryFree implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/SYSTEM/MEMORY/FREE", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/SYSTEM/MEMORY/FREE");
  }
  public void publish(String message, int qos) {
  }
}

class LED0 implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/SYSTEM/LED0/STATUS", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/SYSTEM/LED0/STATUS");
  }
  public void publish(String message, int qos) {
    client.publish("RPI1/SYSTEM/LED0/ACTION", message, qos, false);
  }
}

class LED1 implements IEquipment {
  public void subscribe(int qos) {
    client.subscribe("RPI1/SYSTEM/LED1/STATUS", qos);
  }
  public void unsubscribe() {
    client.unsubscribe("RPI1/SYSTEM/LED1/STATUS");
  }
  public void publish(String message, int qos) {
    client.publish("RPI1/SYSTEM/LED1/ACTION", message, qos, false);
  }
}
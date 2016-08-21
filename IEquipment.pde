
interface IEquipment {  
  void subscribe(int qos);
  void unsubscribe();
  void publish(String message, int qos);
}
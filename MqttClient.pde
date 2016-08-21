
import g4p_controls.*;
import java.awt.Font;
import mqtt.*;
import java.util.UUID;

MQTTClient client;
CPU cpu;
System system;

public void setup(){
  size(340, 260, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
  // GUI
  lblCpuTempLbl.setFont(new Font("Monospaced", Font.BOLD, 18));
  lblCpuTemp.setFont(new Font("Monospaced", Font.BOLD, 18));  
  lblCpuCoreVoltLbl.setFont(new Font("Monospaced", Font.BOLD, 18));
  lblCpuCoreVolt.setFont(new Font("Monospaced", Font.BOLD, 18));  
  lblMemoryTotalLbl.setFont(new Font("Monospaced", Font.BOLD, 18));
  lblMemoryTotal.setFont(new Font("Monospaced", Font.BOLD, 18));  
  lblMemoryAvailableLbl.setFont(new Font("Monospaced", Font.BOLD, 18));
  lblMemoryAvailable.setFont(new Font("Monospaced", Font.BOLD, 18));  
  lblMemoryFreeLbl.setFont(new Font("Monospaced", Font.BOLD, 18));
  lblMemoryFree.setFont(new Font("Monospaced", Font.BOLD, 18));
  
  // mqtt connect
  String clientId = UUID.randomUUID().toString();
  client = new MQTTClient(this);
  client.connect("tcp://test.mosquitto.org:1883", clientId);
  
  // equipment
  cpu = new CPU();
  system = new System();
  
  // subscribe
  cpu.temp().subscribe(0);
  cpu.coreVolt().subscribe(0);
  system.memoryTotal().subscribe(0);
  system.memoryAvailable().subscribe(0);
  system.memoryFree().subscribe(0);  
  
  // leds
  system.led0().subscribe(0);
  system.led1().subscribe(0);
}

public void draw(){
  background(0, 100, 100);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
}

public void dispose(){
  println("dispose");
  super.dispose();
}

void exit(){
  // unsubscribe
  cpu.temp().unsubscribe();
  cpu.coreVolt().unsubscribe();
  system.memoryTotal().unsubscribe();
  system.memoryAvailable().unsubscribe();
  system.memoryFree().unsubscribe();

  // leds
  system.led0().unsubscribe();
  system.led1().unsubscribe();
  
  // disconnect
  client.disconnect();
  
  println("exit");
  super.exit();
}
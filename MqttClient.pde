// Need G4P library
import g4p_controls.*;
import mqtt.*;
import java.awt.Font;
import java.util.UUID;

MQTTClient client;

public void setup(){
  size(340, 210, JAVA2D);
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
  
  // subscribe
  client.subscribe("RPI1/CPU/TEMP", 0);
  client.subscribe("RPI1/CPU/CORE/VOLT", 0);
  client.subscribe("RPI1/SYSTEM/MEMORY/TOTAL", 0);
  client.subscribe("RPI1/SYSTEM/MEMORY/AVAILABLE", 0);
  client.subscribe("RPI1/SYSTEM/MEMORY/FREE", 0);
}

public void draw(){
  background(0, 100, 100);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
}

//public void dispose(){
//  println("dispose");
//  super.dispose();
//}

void exit(){
  // unsubscribe
  client.unsubscribe("RPI1/CPU/TEMP");
  client.unsubscribe("RPI1/CPU/CORE/VOLT");
  client.unsubscribe("RPI1/SYSTEM/MEMORY/TOTAL");
  client.unsubscribe("RPI1/SYSTEM/MEMORY/AVAILABLE");
  client.unsubscribe("RPI1/SYSTEM/MEMORY/FREE");
  // disconnect
  client.disconnect();
  
  println("exit");
  super.exit();
}

void messageReceived(String topic, byte[] payload) {

  switch(topic) {
    case "RPI1/CPU/TEMP": {
      lblCpuTemp.setText(new String(payload));
      lblCpuTemp.setTextBold();
      break;
    }
    case "RPI1/CPU/CORE/VOLT": {
      String data = nf(float(new String(payload)), 1, 2);
      lblCpuCoreVolt.setText(data);
      lblCpuCoreVolt.setTextBold();
      break;
    }
    case "RPI1/SYSTEM/MEMORY/TOTAL": {
      int data = int(new String(payload)) / 1024;
      lblMemoryTotal.setText(str(data));
      lblMemoryTotal.setTextBold();
      break;
    }
    case "RPI1/SYSTEM/MEMORY/AVAILABLE": {
      int data = int(new String(payload)) / 1024;
      lblMemoryAvailable.setText(str(data));
      lblMemoryAvailable.setTextBold();
      break;
    }
    case "RPI1/SYSTEM/MEMORY/FREE": {
      int data = int(new String(payload)) / 1024;
      lblMemoryFree.setText(str(data));
      lblMemoryFree.setTextBold();
      break;
    }
  }
}
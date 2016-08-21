
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
    case "RPI1/SYSTEM/LED0/STATUS": {        // green ACT led
      println("LED0: " + new String(payload));
      break;
    }
    case "RPI1/SYSTEM/LED1/STATUS": {        // red POWER led
      println("LED1: " + new String(payload));
      break;
    }
  }
}
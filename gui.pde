/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void imgTogBtnRed_Click(GImageToggleButton source, GEvent event) { //_CODE_:imgTogBtnRed:576875:

  system.led1().publish(str(source.getState()), 2);
  delay(100);

} //_CODE_:imgTogBtnRed:576875:

public void imgTogBtnGreen_Click(GImageToggleButton source, GEvent event) { //_CODE_:imgTogBtnGreen:767188:

  system.led0().publish(str(source.getState()), 2);
  delay(100);

} //_CODE_:imgTogBtnGreen:767188:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("MQTT Client");
  lblCpuTempLbl = new GLabel(this, 10, 10, 250, 30);
  lblCpuTempLbl.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblCpuTempLbl.setText("CPU Temp (C)");
  lblCpuTempLbl.setTextBold();
  lblCpuTempLbl.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblCpuTempLbl.setOpaque(true);
  lblCpuTemp = new GLabel(this, 270, 10, 60, 30);
  lblCpuTemp.setText("0");
  lblCpuTemp.setTextBold();
  lblCpuTemp.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblCpuTemp.setOpaque(true);
  lblCpuCoreVoltLbl = new GLabel(this, 10, 50, 250, 30);
  lblCpuCoreVoltLbl.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblCpuCoreVoltLbl.setText("CPU Core Volt (V)");
  lblCpuCoreVoltLbl.setTextBold();
  lblCpuCoreVoltLbl.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblCpuCoreVoltLbl.setOpaque(true);
  lblCpuCoreVolt = new GLabel(this, 270, 50, 60, 30);
  lblCpuCoreVolt.setText("0");
  lblCpuCoreVolt.setTextBold();
  lblCpuCoreVolt.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblCpuCoreVolt.setOpaque(true);
  lblMemoryTotalLbl = new GLabel(this, 10, 90, 250, 30);
  lblMemoryTotalLbl.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblMemoryTotalLbl.setText("Memory Total (Mb)");
  lblMemoryTotalLbl.setTextBold();
  lblMemoryTotalLbl.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryTotalLbl.setOpaque(true);
  lblMemoryTotal = new GLabel(this, 270, 90, 60, 30);
  lblMemoryTotal.setText("0");
  lblMemoryTotal.setTextBold();
  lblMemoryTotal.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryTotal.setOpaque(true);
  lblMemoryAvailableLbl = new GLabel(this, 10, 130, 250, 30);
  lblMemoryAvailableLbl.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblMemoryAvailableLbl.setText("Memory Available (Mb)");
  lblMemoryAvailableLbl.setTextBold();
  lblMemoryAvailableLbl.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryAvailableLbl.setOpaque(true);
  lblMemoryAvailable = new GLabel(this, 270, 130, 60, 30);
  lblMemoryAvailable.setText("0");
  lblMemoryAvailable.setTextBold();
  lblMemoryAvailable.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryAvailable.setOpaque(true);
  lblMemoryFreeLbl = new GLabel(this, 10, 170, 250, 30);
  lblMemoryFreeLbl.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  lblMemoryFreeLbl.setText("Memory Free (Mb)");
  lblMemoryFreeLbl.setTextBold();
  lblMemoryFreeLbl.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryFreeLbl.setOpaque(true);
  lblMemoryFree = new GLabel(this, 270, 170, 60, 30);
  lblMemoryFree.setText("0");
  lblMemoryFree.setTextBold();
  lblMemoryFree.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  lblMemoryFree.setOpaque(true);
  imgTogBtnRed = new GImageToggleButton(this, 10, 210, "led-red-50.png", "led-red-50.png", 1, 2);
  imgTogBtnRed.addEventHandler(this, "imgTogBtnRed_Click");
  imgTogBtnGreen = new GImageToggleButton(this, 200, 210, "led-green-50.png", 1, 2);
  imgTogBtnGreen.addEventHandler(this, "imgTogBtnGreen_Click");
}

// Variable declarations 
// autogenerated do not edit
GLabel lblCpuTempLbl; 
GLabel lblCpuTemp; 
GLabel lblCpuCoreVoltLbl; 
GLabel lblCpuCoreVolt; 
GLabel lblMemoryTotalLbl; 
GLabel lblMemoryTotal; 
GLabel lblMemoryAvailableLbl; 
GLabel lblMemoryAvailable; 
GLabel lblMemoryFreeLbl; 
GLabel lblMemoryFree; 
GImageToggleButton imgTogBtnRed; 
GImageToggleButton imgTogBtnGreen; 
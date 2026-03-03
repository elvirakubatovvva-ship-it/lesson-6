import 'device.dart';

class SmartThermostat extends Device {
  double temperature = 22.0;

  SmartThermostat(String name) : super(name);

  @override
  void turnOn() => print('Thermostat $name is ON');

  @override
  void turnOff() => print('Thermostat $name is OFF');

  @override
  void showInfo() {
    print('Device: $name, Temperature: $temperature°C');
  }
}
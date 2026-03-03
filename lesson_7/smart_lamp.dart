import 'device.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int brightness = 50;

  SmartLamp(String name) : super(name);

  @override
  void turnOn() => print('Lamp $name is ON');

  @override
  void turnOff() => print('Lamp $name is OFF');

  @override
  void increase() {
    brightness = (brightness + 10).clamp(0, 100);
    print('Brightness increased to $brightness');
  }

  @override
  void decrease() {
    brightness = (brightness - 10).clamp(0, 100);
    print('Brightness decreased to $brightness');
  }

  @override
  void showInfo() {
    print('Device: $name, Brightness: $brightness%');
  }
}
// ...existing code...
import '../models/service.dart';

class ServiceHelper {
  static List<Service> getServices() {
    return [
      Service(
        id: 1,
        title: 'Lock Installation',
        description: 'Professional lock installation for homes and offices.',
        imagePath: 'assets/lock_installation.png',
      ),
      Service(
        id: 2,
        title: 'Emergency Unlock',
        description: '24/7 emergency unlock services.',
        imagePath: 'assets/emergency_unlock.png',
      ),
    ];
  }
}

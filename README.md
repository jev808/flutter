# Locksmithy Flutter App

## Project Structure
```
lib/
 ├─ models/         # Data models (e.g., Service)
 ├─ views/          # Pages/screens (Home, Services)
 ├─ widgets/        # Reusable widgets (CustomButton, ServiceCard, Footer)
 ├─ services/       # Helper functions (ServiceHelper)
```

## Services Offered
- **Key Duplication** – Get quick and accurate copies of your keys.
- **Emergency Unlocking** – Fast help when you’re locked out anytime, anywhere.
- **Lock Installation** – Secure your home or office with new lock installations.
- **Rekeying Locks** – Change your keys without replacing the whole lock.
- **Car Key Replacement** – Replace lost or broken car keys with ease.

## Activity Requirements Mapping
1. **Project Structure:** Organized into models, views, widgets, services.
2. **Hello World:** Initial HomePage as StatelessWidget.
3. **Stateful Counter:** HomePage converted to StatefulWidget with counter.
4. **Custom Button:** `CustomButton` used in Home and Services pages.
5. **Material & Cupertino:** Both button types shown in Services page.
6. **Navigation:** Two pages with BottomNavigationBar.
7. **Widget Tree:** See `WIDGET_TREE.md` for diagram and explanation.
8. **Refactor:** ServiceCard, CustomButton, Footer as reusable widgets.
9. **Third-Party:** Used `flutter_staggered_grid_view` for Services grid.
10. **Documentation:** This README and widget tree file explain structure and choices.

## Why This Structure?
- **Separation of concerns:** Models, views, widgets, and services are split for maintainability.
- **Reusability:** Widgets are modular and reused across screens.
- **Scalability:** Easy to add new services, screens, or features.
- **Modern UI:** Uses Material Design, Cupertino, and staggered grid for a professional look.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

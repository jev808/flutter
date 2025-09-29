# Locksmithy Widget Tree Diagram

## Home Page
```
Scaffold
 ├─ AppBar
 ├─ Body: SingleChildScrollView
 │   └─ Column
 │       ├─ Hero Section (Column)
 │       │   ├─ Icon (Lock)
 │       │   ├─ Text (Welcome)
 │       │   └─ Text (Tagline)
 │       ├─ Main Buttons (Row)
 │       │   ├─ CustomButton (View Services)
 │       │   └─ CustomButton (Call Locksmith)
```

## Services Page
```
Scaffold
 ├─ AppBar
 ├─ Body: MasonryGridView (flutter_staggered_grid_view)
 │   └─ Card (for each service)
 │       ├─ Expanded: Image.asset (service image)
 │       ├─ Text (service title)
 │       ├─ Text (service description)
 │       └─ ElevatedButton (Request Now)
```

## Widget Hierarchy Explanation
- **Scaffold** is the root for each page, providing structure.
- **AppBar** displays the page title.
- **Body** contains the main content:
  - Home uses a **Column** for hero section and buttons.
  - Services uses a **MasonryGridView** for a staggered grid of service cards.
- **CustomButton** is a reusable widget for actions.
- **ServiceCard** is a reusable widget for displaying service info.

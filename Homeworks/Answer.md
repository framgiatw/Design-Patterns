1. Homework1
Bridge pattern: folder bridge
Shape có 2 loại thể hiện là: Triangle, Circle
Color có 2 loại thể hiện là: GreenColor, BlueColor
Theo bridge pattern:
- Abstraction: Circle, Triangle
- Implementation: GreenColor, Bluecolor
Absraction sẽ sử dụng 1 trong các Implementation để tô màu cho Shape

Null Object Pattern: folder null_obejct_pattern
Nếu không có subscription -> Return Nosubscription.new

Factory Method: folder factory_method
- Creator: Shape
- Creator implementation: Circle, Rectangle, Square
- Factory: ShapeFactory
Khi muốn khởi tạo Circle, Rectangle, Square  chỉ cần khởi tạo qua ShapeFactory
VD: new Shape("CIRCLE")
-> "creating objects without having to specify the exact class of the object that will be created"

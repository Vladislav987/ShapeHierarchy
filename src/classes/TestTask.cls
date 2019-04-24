/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */
@isTest
private with sharing class TestTask {
    @isTest
    static void test(){
        List<Shape> shapes = new List<Shape>();
        shapes.add(new Ellipse(15,8));
        shapes.add(new Triangle(15.5));
        shapes.add(new Quadrilateral( 15.9, 201));
        shapes.add(new Square(17.7));
        shapes.add(new Rhombus(12, 64));
        shapes.add(new Rectangle(24, 36));
        shapes.add(new Parallelogram(7, 14, 44));

        for(Shape shape: shapes){
            System.debug('Perimeter = ' +  shape.getPerimeter() + ' Square = ' + shape.getSquare());
        }
    }
}
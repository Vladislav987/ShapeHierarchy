/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Triangle  implements Shape{
    private Decimal sideOfTriangle;

    public Triangle(Decimal sideOfTriangle){
        if(sideOfTriangle <= 0){
            throw new MyIllegalArgumentException('Side of triangle must be more than: 0');
        }
            this.sideOfTriangle = sideOfTriangle;
    }

    public Decimal getPerimeter() {
        return 3 * sideOfTriangle;

    }

    public Decimal getSquare() {
        return (Decimal)3/4 * sideOfTriangle;
    }

}
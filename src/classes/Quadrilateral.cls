/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Quadrilateral implements Shape{
    private Decimal firstSideOfQuadrilateral;
    private Decimal secondSideOfQuadrilateral;

    public Quadrilateral(Decimal firstSideOfQuadrilateral, Decimal secondSideOfQuadrilateral){
        if (firstSideOfQuadrilateral <= 0 || secondSideOfQuadrilateral  <= 0) {
            throw new MyIllegalArgumentException('Side of quadrilateral must be more than: 0');
        }
        this.firstSideOfQuadrilateral = firstSideOfQuadrilateral;
        this.secondSideOfQuadrilateral = secondSideOfQuadrilateral;
    }

    public Decimal getPerimeter() {
        return 2 * (firstSideOfQuadrilateral + secondSideOfQuadrilateral);
    }

    public Decimal getSquare() {
        return firstSideOfQuadrilateral * secondSideOfQuadrilateral;
    }


}
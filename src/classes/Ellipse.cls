/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Ellipse implements Shape{
    private Decimal firstSemiMajorAxis;
    private Decimal secondSemiMajorAxis;

    public Ellipse(Decimal firstSemiMajorAxis, Decimal secondSemiMajorAxis){
        if (firstSemiMajorAxis <= 0 || secondSemiMajorAxis <= 0){
            throw new MyIllegalArgumentException('Semi-major axis must be more than:  0');
        }
        this.firstSemiMajorAxis = firstSemiMajorAxis;
        this.secondSemiMajorAxis = secondSemiMajorAxis;
    }

    public Decimal getPerimeter() {
        return Math.PI * (firstSemiMajorAxis + secondSemiMajorAxis);
    }

    public Decimal getSquare() {
        return Math.PI * firstSemiMajorAxis *  secondSemiMajorAxis;
    }




}
/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing class Parallelogram extends Rectangle{
    public Decimal degree;
    public Parallelogram(Decimal firstSide, Decimal secondSide, Decimal degree){
        super(firstSide, secondSide);
        if (degree <= 0 || degree > 360) {
            throw new MyIllegalArgumentException('Value of degree must be more than: 0 and less than: 360');
        }
        this.degree = degree;
    }

    public override Decimal getSquare() {
        return super.getSquare() * Math.sin(degree * Math.PI/180);
    }


}
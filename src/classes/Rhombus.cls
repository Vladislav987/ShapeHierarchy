/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public with sharing virtual class Rhombus extends Square{
    private Decimal degree;

    public Rhombus(Decimal sideOfRhombus, Decimal degree){
        super(sideOfRhombus);
        if(degree <= 0){
            throw new MyIllegalArgumentException('Value of degree must be more than: 0');
        }
        this.degree = degree;

    }

    public override Decimal getSquare() {
        return super.getSquare() * Math.sin(degree * Math.PI/180);
    }


}
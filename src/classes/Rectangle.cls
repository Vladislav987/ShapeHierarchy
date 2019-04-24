/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public virtual with sharing class Rectangle extends Square{
    private Decimal secondSideOfRectangle;

    public Rectangle(Decimal firstSideOfRectangle, Decimal secondSideOfRectangle){
        super(firstSideOfRectangle);
        if(secondSideOfRectangle <= 0){
            throw new MyIllegalArgumentException('Side must be more than: 0');
        }

        this.secondSideOfRectangle = secondSideOfRectangle;
    }

    public override Decimal getPerimeter() {
        return 2 * (super.getSideOfSquare() + secondSideOfRectangle);
    }

    public virtual override Decimal getSquare() {
        return super.getSideOfSquare() * secondSideOfRectangle;
    }


}
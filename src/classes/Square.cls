/**
 * Created by Ponamarov Vladyslav on 24.04.2019.
 */

public virtual with sharing class Square implements Shape{
    private Decimal sideOfSquare;

    public Square(Decimal sideOfSquare){
        if (sideOfSquare <= 0) {
            throw new MyIllegalArgumentException('Side  must be more than: 0');
        }
        this.sideOfSquare = sideOfSquare;
    }


    public Decimal getSideOfSquare(){
        return sideOfSquare;
    }

    public virtual Decimal getPerimeter() {
        return 4 * sideOfSquare;
    }

    public virtual Decimal getSquare() {
        return sideOfSquare * sideOfSquare;
    }

}
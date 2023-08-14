public class Subtracao implements IOperacao {

    private double num1;

    public double getNum1() {
        return num1;
    }

    @Override
    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    @Override
    public void setNum2(double num2) {
        this.num2 = num2;
    }

    private double num2;

    @Override
    public double calcula() {
        return this.num1 - this.num2;
    }

}

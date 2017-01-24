using System;

public class MethodInvoker
{
    private Func<object> p;

    public MethodInvoker(Func<object> p)
    {
        this.p = p;
    }
}
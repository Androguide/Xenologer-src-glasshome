package com.google.zxing;

public abstract class ReaderException extends Exception
{
  public final Throwable fillInStackTrace()
  {
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.ReaderException
 * JD-Core Version:    0.6.2
 */
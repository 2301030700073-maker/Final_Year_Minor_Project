package com.google.protobuf;

/* loaded from: classes.dex */
public class Utf8$UnpairedSurrogateException extends IllegalArgumentException {
    public Utf8$UnpairedSurrogateException(int i, int i2) {
        super("Unpaired surrogate at index " + i + " of " + i2);
    }
}

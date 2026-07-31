package com.google.protobuf;

import java.util.RandomAccess;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DoubleArrayList extends AbstractProtobufList implements RandomAccess {
    public double[] array;

    public abstract void addDouble(double d);

    public abstract void ensureIndexInRange$1(int i);
}

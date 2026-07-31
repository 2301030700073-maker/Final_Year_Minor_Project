package com.google.protobuf;

import java.util.RandomAccess;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IntArrayList extends AbstractProtobufList implements RandomAccess {
    public int[] array;

    public abstract void addInt(int i);

    public abstract int getInt(int i);
}

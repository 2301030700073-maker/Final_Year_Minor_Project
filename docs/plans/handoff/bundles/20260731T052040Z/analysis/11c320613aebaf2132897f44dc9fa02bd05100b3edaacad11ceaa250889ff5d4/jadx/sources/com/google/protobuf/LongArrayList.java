package com.google.protobuf;

import java.util.RandomAccess;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LongArrayList extends AbstractProtobufList implements RandomAccess {
    public long[] array;

    public abstract void addLong(long j);

    public abstract long getLong(int i);
}

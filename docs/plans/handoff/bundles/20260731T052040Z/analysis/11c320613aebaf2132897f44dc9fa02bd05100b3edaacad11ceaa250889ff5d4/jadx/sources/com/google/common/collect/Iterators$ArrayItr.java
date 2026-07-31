package com.google.common.collect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Iterators$ArrayItr extends AbstractIndexedListIterator {
    public static final Iterators$ArrayItr EMPTY = new Iterators$ArrayItr(new Object[0], 0, 0);
    public final Object[] array;

    public Iterators$ArrayItr(Object[] objArr, int i, int i2) {
        super(i, i2);
        this.array = objArr;
    }

    @Override // com.google.common.collect.AbstractIndexedListIterator
    public final Object get(int i) {
        return this.array[i];
    }
}

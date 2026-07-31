package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayIterator implements Iterator, Iterable {
    public final Object[] _a;
    public int _index = 0;

    public ArrayIterator(Object[] objArr) {
        this._a = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this._index < this._a.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this._index;
        Object[] objArr = this._a;
        if (i < objArr.length) {
            this._index = i + 1;
            return objArr[i];
        }
        Utils$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this;
    }
}

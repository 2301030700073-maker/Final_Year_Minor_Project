package com.google.android.gms.common.data;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.V1;
import j$.util.Iterator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

@KeepForSdk
/* loaded from: classes.dex */
public class DataBufferIterator<T> implements Iterator<T>, j$.util.Iterator {
    protected final DataBuffer zaa;
    protected int zab = -1;

    public DataBufferIterator(DataBuffer dataBuffer) {
        this.zaa = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.zab < this.zaa.getCount() + (-1);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException(V1.m2494case("Cannot advance the iterator beyond ", this.zab));
        }
        DataBuffer dataBuffer = this.zaa;
        int i = this.zab + 1;
        this.zab = i;
        return dataBuffer.get(i);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}

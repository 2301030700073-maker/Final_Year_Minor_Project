package com.android.launcher3.util;

import android.util.SparseArray;
import java.util.Iterator;

/* loaded from: classes.dex */
public class IntSparseArrayMap extends SparseArray implements Iterable {

    public class ValueIterator implements Iterator {
        public int mNextIndex = 0;

        public ValueIterator() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mNextIndex < IntSparseArrayMap.this.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            IntSparseArrayMap intSparseArrayMap = IntSparseArrayMap.this;
            int i = this.mNextIndex;
            this.mNextIndex = i + 1;
            return intSparseArrayMap.valueAt(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public boolean containsKey(int i) {
        return indexOfKey(i) >= 0;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return new ValueIterator();
    }

    @Override // android.util.SparseArray
    public IntSparseArrayMap clone() {
        return (IntSparseArrayMap) super.clone();
    }
}

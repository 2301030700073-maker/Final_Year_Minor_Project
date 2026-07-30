package com.android.launcher3.util;

import java.util.Arrays;

/* loaded from: classes.dex */
public class IntSet {
    public final IntArray mArray = new IntArray(10);

    public void add(int i) {
        IntArray intArray = this.mArray;
        if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i) < 0) {
            this.mArray.add((-r0) - 1, i);
        }
    }

    public boolean contains(int i) {
        IntArray intArray = this.mArray;
        return Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof IntSet) && ((IntSet) obj).mArray.equals(this.mArray);
    }
}

package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.input.pointer.PointerId;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerIdArray.kt */
/* loaded from: classes.dex */
public final class PointerIdArray {
    private long[] internalArray = new long[2];
    private int size;

    public final int getSize() {
        return this.size;
    }

    /* renamed from: get-_I2yYro, reason: not valid java name */
    public final long m1726get_I2yYro(int i) {
        return PointerId.m1679constructorimpl(this.internalArray[i]);
    }

    /* renamed from: remove-0FcD4WY, reason: not valid java name */
    public final boolean m1727remove0FcD4WY(long j) {
        return remove(j);
    }

    public final boolean remove(long j) {
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (j == m1726get_I2yYro(i2)) {
                removeAt(i2);
                return true;
            }
        }
        return false;
    }

    public final boolean removeAt(int i) {
        int i2 = this.size;
        if (i >= i2) {
            return false;
        }
        int i3 = i2 - 1;
        while (i < i3) {
            long[] jArr = this.internalArray;
            int i4 = i + 1;
            jArr[i] = jArr[i4];
            i = i4;
        }
        this.size--;
        return true;
    }

    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final boolean add(long j) {
        if (contains(j)) {
            return false;
        }
        set(this.size, j);
        return true;
    }

    /* renamed from: add-0FcD4WY, reason: not valid java name */
    public final boolean m1725add0FcD4WY(long j) {
        return add(j);
    }

    public final void set(int i, long j) {
        long[] jArr = this.internalArray;
        if (i >= jArr.length) {
            long[] copyOf = Arrays.copyOf(jArr, Math.max(i + 1, jArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.internalArray = copyOf;
        }
        this.internalArray[i] = j;
        if (i >= this.size) {
            this.size = i + 1;
        }
    }

    public final void clear() {
        this.size = 0;
    }

    public final boolean contains(long j) {
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.internalArray[i2] == j) {
                return true;
            }
        }
        return false;
    }
}

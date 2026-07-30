package defpackage;

import defpackage.ExecutorC3574qb;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class Lz<T> {
    private volatile AtomicReferenceArray<T> array;

    public Lz(int i) {
        this.array = new AtomicReferenceArray<>(i);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m1371do() {
        return this.array.length();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1372for(int i, ExecutorC3574qb.Cdo cdo) {
        AtomicReferenceArray<T> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i < length) {
            atomicReferenceArray.set(i, cdo);
            return;
        }
        int i2 = i + 1;
        int i3 = length * 2;
        if (i2 < i3) {
            i2 = i3;
        }
        AtomicReferenceArray<T> atomicReferenceArray2 = new AtomicReferenceArray<>(i2);
        for (int i4 = 0; i4 < length; i4++) {
            atomicReferenceArray2.set(i4, atomicReferenceArray.get(i4));
        }
        atomicReferenceArray2.set(i, cdo);
        this.array = atomicReferenceArray2;
    }

    /* renamed from: if, reason: not valid java name */
    public final T m1373if(int i) {
        AtomicReferenceArray<T> atomicReferenceArray = this.array;
        if (i < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i);
        }
        return null;
    }
}

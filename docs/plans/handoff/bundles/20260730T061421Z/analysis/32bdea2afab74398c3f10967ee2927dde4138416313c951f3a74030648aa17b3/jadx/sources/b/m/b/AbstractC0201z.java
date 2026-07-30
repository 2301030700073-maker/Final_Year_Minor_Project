package b.m.b;

import android.util.SparseIntArray;

/* renamed from: b.m.b.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0201z {
    public final SparseIntArray mSpanIndexCache = new SparseIntArray();
    public final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
    public boolean mCacheSpanIndices = false;
    public boolean mCacheSpanGroupIndices = false;

    public static int findFirstKeyLessThan(SparseIntArray sparseIntArray, int i) {
        int size = sparseIntArray.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (sparseIntArray.keyAt(i3) < i) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        int i4 = i2 - 1;
        if (i4 < 0 || i4 >= sparseIntArray.size()) {
            return -1;
        }
        return sparseIntArray.keyAt(i4);
    }

    public int getCachedSpanIndex(int i, int i2) {
        if (!this.mCacheSpanIndices) {
            return getSpanIndex(i, i2);
        }
        int i3 = this.mSpanIndexCache.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int spanIndex = getSpanIndex(i, i2);
        this.mSpanIndexCache.put(i, spanIndex);
        return spanIndex;
    }

    public int getSpanGroupIndex(int i, int i2) {
        int spanSize = getSpanSize(i);
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int spanSize2 = getSpanSize(i5);
            i3 += spanSize2;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = spanSize2;
            }
        }
        return i3 + spanSize > i2 ? i4 + 1 : i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:10:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:10:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:10:0x0030). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getSpanIndex(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.getSpanSize(r6)
            r1 = 0
            if (r0 != r7) goto L8
            return r1
        L8:
            boolean r2 = r5.mCacheSpanIndices
            if (r2 == 0) goto L20
            android.util.SparseIntArray r2 = r5.mSpanIndexCache
            int r2 = findFirstKeyLessThan(r2, r6)
            if (r2 < 0) goto L20
            android.util.SparseIntArray r3 = r5.mSpanIndexCache
            int r3 = r3.get(r2)
            int r4 = r5.getSpanSize(r2)
            int r4 = r4 + r3
            goto L30
        L20:
            r2 = r1
            r4 = r2
        L22:
            if (r2 >= r6) goto L33
            int r3 = r5.getSpanSize(r2)
            int r4 = r4 + r3
            if (r4 != r7) goto L2d
            r4 = r1
            goto L30
        L2d:
            if (r4 <= r7) goto L30
            r4 = r3
        L30:
            int r2 = r2 + 1
            goto L22
        L33:
            int r0 = r0 + r4
            if (r0 > r7) goto L37
            return r4
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.AbstractC0201z.getSpanIndex(int, int):int");
    }

    public abstract int getSpanSize(int i);
}

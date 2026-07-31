package androidx.collection;

import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FloatSetKt {
    public static final float[] EmptyFloatArray;

    static {
        long[] jArr = ScatterMapKt.EmptyGroup;
        int unloadedCapacity = ScatterMapKt.unloadedCapacity(0);
        int max = unloadedCapacity > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(unloadedCapacity)) : 0;
        if (max != 0) {
            int i = ((max + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i];
            Arrays.fill(jArr2, 0, i, -9187201950435737472L);
            jArr = jArr2;
        }
        int i2 = max >> 3;
        long j = 255 << ((max & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        float[] fArr = new float[max];
        EmptyFloatArray = new float[0];
    }
}

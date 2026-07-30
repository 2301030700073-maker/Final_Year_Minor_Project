package com.google.android.gms.internal.wearable;

import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzab extends zzac {
    public static /* synthetic */ int zza(float[] fArr, float f, int i, int i2) {
        while (i < i2) {
            if (fArr[i] == f) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static List zzb(float... fArr) {
        int length = fArr.length;
        return length == 0 ? Collections.emptyList() : new zzaa(fArr, 0, length);
    }
}

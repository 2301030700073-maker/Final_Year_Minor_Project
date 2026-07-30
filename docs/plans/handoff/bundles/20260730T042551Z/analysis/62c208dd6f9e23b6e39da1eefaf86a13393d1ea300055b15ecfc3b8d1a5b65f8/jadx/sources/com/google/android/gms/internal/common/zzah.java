package com.google.android.gms.internal.common;

import defpackage.V1;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes.dex */
public final class zzah {
    public static Object[] zza(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                throw new NullPointerException(V1.m2494case("at index ", i2));
            }
        }
        return objArr;
    }
}

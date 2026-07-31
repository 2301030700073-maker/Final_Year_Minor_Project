package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzlp {
    static boolean zzaa(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    String zzS();

    int zza();

    int zzab(zzv zzvVar) throws zzib;

    int zzu() throws zzib;

    default void zzv(zzlo zzloVar) {
    }

    default void zzw() {
    }
}

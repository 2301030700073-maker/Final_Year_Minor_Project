package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzaem {
    void zzu(zzv zzvVar);

    int zzv(zzj zzjVar, int i, boolean z, int i2) throws IOException;

    void zzw(zzeg zzegVar, int i, int i2);

    void zzx(long j, int i, int i2, int i3, zzael zzaelVar);

    default int zzy(zzj zzjVar, int i, boolean z) throws IOException {
        return zzv(zzjVar, i, z, 0);
    }

    default void zzz(zzeg zzegVar, int i) {
        zzw(zzegVar, i, 0);
    }
}

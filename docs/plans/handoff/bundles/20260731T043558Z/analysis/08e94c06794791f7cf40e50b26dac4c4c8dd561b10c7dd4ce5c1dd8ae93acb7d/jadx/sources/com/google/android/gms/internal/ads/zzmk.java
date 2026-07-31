package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzmk {
    private final zzs zza;
    private final SparseArray zzb;

    public zzmk(zzs zzsVar, SparseArray sparseArray) {
        this.zza = zzsVar;
        SparseArray sparseArray2 = new SparseArray(zzsVar.zzb());
        for (int i = 0; i < zzsVar.zzb(); i++) {
            int zzc = zzsVar.zzc(i);
            zzmj zzmjVar = (zzmj) sparseArray.get(zzc);
            zzmjVar.getClass();
            sparseArray2.append(zzc, zzmjVar);
        }
        this.zzb = sparseArray2;
    }

    public final zzmj zza(int i) {
        zzmj zzmjVar = (zzmj) this.zzb.get(i);
        zzmjVar.getClass();
        return zzmjVar;
    }

    public final boolean zzb(int i) {
        return this.zza.zza(i);
    }

    public final int zzc() {
        return this.zza.zzb();
    }

    public final int zzd(int i) {
        return this.zza.zzc(i);
    }
}

package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzyc {
    public final int zza;
    public final zzln[] zzb;
    public final zzxv[] zzc;
    public final zzby zzd;
    public final Object zze;

    public zzyc(zzln[] zzlnVarArr, zzxv[] zzxvVarArr, zzby zzbyVar, Object obj) {
        int length = zzlnVarArr.length;
        zzcw.zzd(length == zzxvVarArr.length);
        this.zzb = zzlnVarArr;
        this.zzc = (zzxv[]) zzxvVarArr.clone();
        this.zzd = zzbyVar;
        this.zze = obj;
        this.zza = length;
    }

    public final boolean zza(zzyc zzycVar, int i) {
        return zzycVar != null && Objects.equals(this.zzb[i], zzycVar.zzb[i]) && Objects.equals(this.zzc[i], zzycVar.zzc[i]);
    }

    public final boolean zzb(int i) {
        return this.zzb[i] != null;
    }
}

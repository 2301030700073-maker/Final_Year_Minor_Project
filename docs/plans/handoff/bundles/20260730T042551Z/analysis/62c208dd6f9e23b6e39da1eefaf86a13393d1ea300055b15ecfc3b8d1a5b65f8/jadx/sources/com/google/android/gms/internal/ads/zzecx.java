package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzecx implements zzecw {
    public final zzecw zza;
    private final zzfuc zzb;

    public zzecx(zzecw zzecwVar, zzfuc zzfucVar) {
        this.zza = zzecwVar;
        this.zzb = zzfucVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(zzfca zzfcaVar, zzfbo zzfboVar) {
        return zzgch.zzm(this.zza.zza(zzfcaVar, zzfboVar), this.zzb, zzbzw.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        return this.zza.zzb(zzfcaVar, zzfboVar);
    }
}

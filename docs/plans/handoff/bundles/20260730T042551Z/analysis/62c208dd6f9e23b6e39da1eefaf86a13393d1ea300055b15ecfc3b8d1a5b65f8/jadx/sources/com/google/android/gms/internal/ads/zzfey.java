package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzfey {
    private final zzfer zza;
    private final InterfaceFutureC3942wq zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzfey(final zzfdw zzfdwVar, final zzfeq zzfeqVar, final zzfer zzferVar) {
        this.zza = zzferVar;
        this.zzb = zzgch.zzf(zzgch.zzn(zzfeqVar.zza(zzferVar), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzfew
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzfey.this.zzb(zzfeqVar, zzfdwVar, zzferVar, (zzfef) obj);
            }
        }, zzferVar.zzb()), Exception.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzfex
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzfey.this.zzc(zzfeqVar, (Exception) obj);
            }
        }, zzferVar.zzb());
    }

    public final synchronized InterfaceFutureC3942wq zza(zzfer zzferVar) {
        if (!this.zzd && !this.zzc && this.zza.zza() != null && zzferVar.zza() != null && this.zza.zza().equals(zzferVar.zza())) {
            this.zzc = true;
            return this.zzb;
        }
        return null;
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzb(zzfeq zzfeqVar, zzfdw zzfdwVar, zzfer zzferVar, zzfef zzfefVar) {
        synchronized (this) {
            this.zzd = true;
            zzfeqVar.zzb(zzfefVar);
            if (this.zzc) {
                return zzgch.zzh(new zzfep(zzfefVar, zzferVar));
            }
            zzfdwVar.zzd(zzferVar.zza(), zzfefVar);
            return zzgch.zzh(null);
        }
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(zzfeq zzfeqVar, Exception exc) {
        synchronized (this) {
            this.zzd = true;
            throw exc;
        }
    }

    public final synchronized void zzd(zzgcd zzgcdVar) {
        zzgch.zzr(zzgch.zzn(this.zzb, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzfev
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzgch.zzi();
            }
        }, this.zza.zzb()), zzgcdVar, this.zza.zzb());
    }
}

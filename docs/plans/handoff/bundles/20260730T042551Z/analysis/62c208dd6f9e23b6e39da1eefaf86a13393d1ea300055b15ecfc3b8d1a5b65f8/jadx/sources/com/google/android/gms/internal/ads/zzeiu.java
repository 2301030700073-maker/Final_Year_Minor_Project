package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzeiu implements zzecw {
    private final zzbdg zza;
    private final zzgcs zzb;
    private final zzfgn zzc;
    private final zzejd zzd;

    public zzeiu(zzfgn zzfgnVar, zzgcs zzgcsVar, zzbdg zzbdgVar, zzejd zzejdVar) {
        this.zzc = zzfgnVar;
        this.zzb = zzgcsVar;
        this.zza = zzbdgVar;
        this.zzd = zzejdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzcab zzcabVar = new zzcab();
        zzeiz zzeizVar = new zzeiz();
        zzeizVar.zzd(new zzeit(this, zzcabVar, zzfcaVar, zzfboVar, zzeizVar));
        zzfbt zzfbtVar = zzfboVar.zzs;
        final zzbdb zzbdbVar = new zzbdb(zzeizVar, zzfbtVar.zzb, zzfbtVar.zza);
        zzfgh zzfghVar = zzfgh.CUSTOM_RENDER_SYN;
        return zzffx.zzd(new zzffs() { // from class: com.google.android.gms.internal.ads.zzeis
            @Override // com.google.android.gms.internal.ads.zzffs
            public final void zza() {
                zzeiu.this.zzc(zzbdbVar);
            }
        }, this.zzb, zzfghVar, this.zzc).zzb(zzfgh.CUSTOM_RENDER_ACK).zzd(zzcabVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        zzfbt zzfbtVar;
        return (this.zza == null || (zzfbtVar = zzfboVar.zzs) == null || zzfbtVar.zza == null) ? false : true;
    }

    public final /* synthetic */ void zzc(zzbdb zzbdbVar) {
        this.zza.zze(zzbdbVar);
    }
}

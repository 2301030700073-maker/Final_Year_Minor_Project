package com.google.android.gms.internal.ads;

import defpackage.C3307m2;
import defpackage.InterfaceFutureC3942wq;
import defpackage.LG;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzevb implements zzetr {
    private final zzbzm zza;
    private final ScheduledExecutorService zzb;
    private final zzgcs zzc;

    public zzevb(String str, zzbam zzbamVar, zzbzm zzbzmVar, ScheduledExecutorService scheduledExecutorService, zzgcs zzgcsVar) {
        this.zza = zzbzmVar;
        this.zzb = scheduledExecutorService;
        this.zzc = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 43;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcX)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdc)).booleanValue()) {
                InterfaceFutureC3942wq zzn = zzgch.zzn(zzfrj.zza(LG.m1320try(null), null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeuz
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        C3307m2 c3307m2 = (C3307m2) obj;
                        return c3307m2 == null ? zzgch.zzh(new zzevc(null, -1)) : zzgch.zzh(new zzevc(c3307m2.f14297do, c3307m2.f14296do));
                    }
                }, this.zzc);
                if (((Boolean) zzbdy.zza.zze()).booleanValue()) {
                    zzn = zzgch.zzo(zzn, ((Long) zzbdy.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
                }
                return zzgch.zze(zzn, Exception.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeva
                    @Override // com.google.android.gms.internal.ads.zzfuc
                    public final Object apply(Object obj) {
                        return zzevb.this.zzc((Exception) obj);
                    }
                }, this.zzc);
            }
        }
        return zzgch.zzh(new zzevc(null, -1));
    }

    public final /* synthetic */ zzevc zzc(Exception exc) {
        this.zza.zzw(exc, "AppSetIdInfoGmscoreSignal");
        return new zzevc(null, -1);
    }
}

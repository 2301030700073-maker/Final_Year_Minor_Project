package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.C3307m2;
import defpackage.FG;
import defpackage.InterfaceC3248l2;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzeni implements zzetr {
    final zzbzm zza;
    InterfaceC3248l2 zzb;
    private final ScheduledExecutorService zzc;
    private final zzgcs zzd;
    private final Context zze;

    public zzeni(Context context, zzbzm zzbzmVar, ScheduledExecutorService scheduledExecutorService, zzgcs zzgcsVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdb)).booleanValue()) {
            this.zzb = new com.google.android.gms.internal.appset.zzr(context);
        }
        this.zze = context;
        this.zza = zzbzmVar;
        this.zzc = scheduledExecutorService;
        this.zzd = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcX)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdc)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcY)).booleanValue()) {
                    return zzgch.zzm(zzfrj.zza(this.zzb.getAppSetIdInfo(), null), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzenf
                        @Override // com.google.android.gms.internal.ads.zzfuc
                        public final Object apply(Object obj) {
                            C3307m2 c3307m2 = (C3307m2) obj;
                            return new zzenj(c3307m2.f14297do, c3307m2.f14296do);
                        }
                    }, zzbzw.zzg);
                }
                FG<C3307m2> zza = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdb)).booleanValue() ? zzfdn.zza(this.zze) : this.zzb.getAppSetIdInfo();
                if (zza == null) {
                    return zzgch.zzh(new zzenj(null, -1));
                }
                InterfaceFutureC3942wq zzn = zzgch.zzn(zzfrj.zza(zza, null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeng
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        C3307m2 c3307m2 = (C3307m2) obj;
                        return c3307m2 == null ? zzgch.zzh(new zzenj(null, -1)) : zzgch.zzh(new zzenj(c3307m2.f14297do, c3307m2.f14296do));
                    }
                }, zzbzw.zzg);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcZ)).booleanValue()) {
                    zzn = zzgch.zzo(zzn, ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzda)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
                }
                return zzgch.zze(zzn, Exception.class, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzenh
                    @Override // com.google.android.gms.internal.ads.zzfuc
                    public final Object apply(Object obj) {
                        zzeni.this.zza.zzw((Exception) obj, "AppSetIdInfoSignal");
                        return new zzenj(null, -1);
                    }
                }, this.zzd);
            }
        }
        return zzgch.zzh(new zzenj(null, -1));
    }
}

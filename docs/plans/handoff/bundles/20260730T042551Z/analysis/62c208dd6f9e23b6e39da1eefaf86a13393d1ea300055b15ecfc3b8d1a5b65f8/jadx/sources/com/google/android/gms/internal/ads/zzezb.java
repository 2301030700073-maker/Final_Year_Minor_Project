package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzezb {
    private final zzfdw zza;
    private final zzcuz zzb;
    private final Executor zzc;
    private zzeyz zzd;

    public zzezb(zzfdw zzfdwVar, zzcuz zzcuzVar, Executor executor) {
        this.zza = zzfdwVar;
        this.zzb = zzcuzVar;
        this.zzc = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    public final zzfeg zze() {
        zzfcj zzg = this.zzb.zzg();
        return this.zza.zzc(zzg.zzd, zzg.zzf, zzg.zzj);
    }

    public final InterfaceFutureC3942wq zzc() {
        InterfaceFutureC3942wq interfaceFutureC3942wq;
        zzeyz zzeyzVar = this.zzd;
        if (zzeyzVar != null) {
            return zzgch.zzh(zzeyzVar);
        }
        if (((Boolean) zzbes.zza.zze()).booleanValue()) {
            interfaceFutureC3942wq = (zzgby) zzgch.zze((zzgby) zzgch.zzm(zzgby.zzu(this.zzb.zzb().zze(this.zza.zza())), new zzeyy(this), this.zzc), zzdyh.class, new zzeyx(this), this.zzc);
        } else {
            zzeyz zzeyzVar2 = new zzeyz(null, zze(), null);
            this.zzd = zzeyzVar2;
            interfaceFutureC3942wq = zzgch.zzh(zzeyzVar2);
        }
        return zzgch.zzm(interfaceFutureC3942wq, new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeyw
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return (zzeyz) obj;
            }
        }, this.zzc);
    }
}

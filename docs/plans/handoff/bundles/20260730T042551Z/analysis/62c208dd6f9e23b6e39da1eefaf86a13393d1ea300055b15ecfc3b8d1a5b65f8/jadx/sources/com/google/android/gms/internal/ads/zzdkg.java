package com.google.android.gms.internal.ads;

import defpackage.F2;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdkg implements zzcwn {
    private final zzdif zza;
    private final zzdik zzb;
    private final Executor zzc;
    private final Executor zzd;

    public zzdkg(zzdif zzdifVar, zzdik zzdikVar, Executor executor, Executor executor2) {
        this.zza = zzdifVar;
        this.zzb = zzdikVar;
        this.zzc = executor;
        this.zzd = executor2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(final zzcex zzcexVar) {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdke
            @Override // java.lang.Runnable
            public final void run() {
                zzcex.this.zzd("onSdkImpression", new F2());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzr() {
        if (this.zzb.zzd()) {
            zzdif zzdifVar = this.zza;
            zzecr zzu = zzdifVar.zzu();
            if (zzu == null && zzdifVar.zzw() != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue()) {
                zzdif zzdifVar2 = this.zza;
                InterfaceFutureC3942wq zzw = zzdifVar2.zzw();
                zzcab zzp = zzdifVar2.zzp();
                if (zzw == null || zzp == null) {
                    return;
                }
                zzgch.zzr(zzgch.zzl(zzw, zzp), new zzdkf(this), this.zzd);
                return;
            }
            if (zzu != null) {
                zzdif zzdifVar3 = this.zza;
                zzcex zzr = zzdifVar3.zzr();
                zzcex zzs = zzdifVar3.zzs();
                if (zzr == null) {
                    zzr = zzs != null ? zzs : null;
                }
                if (zzr != null) {
                    zzb(zzr);
                }
            }
        }
    }
}

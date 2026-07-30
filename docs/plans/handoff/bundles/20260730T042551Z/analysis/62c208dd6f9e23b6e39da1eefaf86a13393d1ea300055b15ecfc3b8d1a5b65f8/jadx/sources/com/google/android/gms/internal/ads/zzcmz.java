package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzcmz implements zzbjp {
    final /* synthetic */ zzcnc zza;

    public zzcmz(zzcnc zzcncVar) {
        this.zza = zzcncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final void zza(Object obj, Map map) {
        Executor executor;
        if (zzcnc.zzg(this.zza, map)) {
            executor = this.zza.zzc;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmy
                @Override // java.lang.Runnable
                public final void run() {
                    zzcnh zzcnhVar;
                    zzcnhVar = zzcmz.this.zza.zzd;
                    zzcnhVar.zzg();
                }
            });
        }
    }
}

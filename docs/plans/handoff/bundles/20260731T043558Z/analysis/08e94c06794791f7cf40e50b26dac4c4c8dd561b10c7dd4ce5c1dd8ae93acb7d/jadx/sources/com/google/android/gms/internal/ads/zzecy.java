package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzecy {
    private final zzcjn zza;
    private final Context zzb;
    private final Executor zzc;

    zzecy(zzcjn zzcjnVar, Context context, Executor executor) {
        this.zza = zzcjnVar;
        this.zzb = context;
        this.zzc = executor;
    }

    public final void zza() {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzecx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzecy.this.zzb();
            }
        });
    }

    final /* synthetic */ void zzb() {
        zzeda zzh = this.zza.zzh();
        zzh.zzb(this.zzb);
        zzh.zza().zza().zza();
    }
}

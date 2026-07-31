package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeva implements zzeya {
    private final Context zza;
    private final zzgus zzb;

    zzeva(zzgus zzgusVar, Context context) {
        this.zzb = zzgusVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zzb.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuz
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeva.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 57;
    }

    final /* synthetic */ zzevb zzc() {
        com.google.android.gms.ads.internal.zzt.zzc();
        return new zzevb(com.google.android.gms.ads.internal.util.zzs.zzw(this.zza));
    }
}

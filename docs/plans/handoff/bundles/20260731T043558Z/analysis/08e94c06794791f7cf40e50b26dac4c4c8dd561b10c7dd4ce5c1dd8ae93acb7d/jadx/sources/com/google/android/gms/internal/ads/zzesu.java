package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzesu implements zzeya {
    private final zzgus zza;
    private final zzdtd zzb;
    private final String zzc;
    private final zzfgn zzd;

    public zzesu(zzgus zzgusVar, zzdtd zzdtdVar, zzfgn zzfgnVar, String str) {
        this.zza = zzgusVar;
        this.zzb = zzdtdVar;
        this.zzd = zzfgnVar;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzest
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzesu.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 17;
    }

    final /* synthetic */ zzesv zzc() {
        zzfgn zzfgnVar = this.zzd;
        zzdtd zzdtdVar = this.zzb;
        return new zzesv(zzdtdVar.zzb(zzfgnVar.zzg, this.zzc), zzdtdVar.zzc());
    }
}

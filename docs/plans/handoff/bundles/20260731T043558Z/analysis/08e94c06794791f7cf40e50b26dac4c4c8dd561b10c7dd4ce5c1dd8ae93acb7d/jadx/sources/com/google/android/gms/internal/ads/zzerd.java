package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzerd implements zzeya {
    private final zzgus zza;
    private final zzfgn zzb;
    private final zzcbn zzc;

    public zzerd(zzgus zzgusVar, zzfgn zzfgnVar, zzcbn zzcbnVar) {
        this.zza = zzgusVar;
        this.zzb = zzfgnVar;
        this.zzc = zzcbnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzerc
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzerd.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 9;
    }

    final /* synthetic */ zzere zzc() {
        return new zzere(this.zzb.zzk, this.zzc.zzl());
    }
}

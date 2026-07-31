package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzezv implements zzeya {
    public zzezv(zzcay zzcayVar, zzgus zzgusVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        final ListenableFuture zza = zzgui.zza(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzgt)).booleanValue()) {
            zza = zzgui.zza(null);
        }
        final ListenableFuture zza2 = zzgui.zza(null);
        return zzgui.zzo(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzezu
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzezw((String) ListenableFuture.this.get(), (String) zza2.get());
            }
        }, zzcbv.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 47;
    }
}

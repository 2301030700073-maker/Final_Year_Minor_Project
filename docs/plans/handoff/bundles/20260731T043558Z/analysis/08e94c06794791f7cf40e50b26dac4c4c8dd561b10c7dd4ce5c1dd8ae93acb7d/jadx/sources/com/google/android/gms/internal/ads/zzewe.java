package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzewe implements zzeya {
    private static String zzc;
    private final zzgus zza;
    private final Context zzb;

    public zzewe(zzgus zzgusVar, Context context) {
        this.zza = zzgusVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzewd
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzewe.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 27;
    }

    final /* synthetic */ zzewf zzc() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfP)).booleanValue()) {
            return new zzewf(null);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfY)).booleanValue()) {
            return new zzewf(com.google.android.gms.ads.internal.zzt.zzu().zzb(this.zzb));
        }
        if (zzc == null) {
            zzc = com.google.android.gms.ads.internal.zzt.zzu().zzb(this.zzb);
        }
        return new zzewf(zzc);
    }
}

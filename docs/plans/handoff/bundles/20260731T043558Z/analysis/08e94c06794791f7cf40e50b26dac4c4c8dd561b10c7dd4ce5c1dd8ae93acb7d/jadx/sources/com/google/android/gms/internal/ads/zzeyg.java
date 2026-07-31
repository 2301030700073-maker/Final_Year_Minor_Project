package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeyg implements zzeya {
    private final Context zza;
    private final zzgus zzb;

    zzeyg(Context context, zzgus zzgusVar) {
        this.zza = context;
        this.zzb = zzgusVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return ((Boolean) zzbgm.zzb.zze()).booleanValue() ? this.zzb.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzeyf
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzeyg.this.zzc();
            }
        }) : zzgui.zza(new zzeyh(-1, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 59;
    }

    final /* synthetic */ zzeyh zzc() {
        Context context = this.zza;
        return new zzeyh(zzbef.zzc(context), zzbef.zzd(context));
    }
}

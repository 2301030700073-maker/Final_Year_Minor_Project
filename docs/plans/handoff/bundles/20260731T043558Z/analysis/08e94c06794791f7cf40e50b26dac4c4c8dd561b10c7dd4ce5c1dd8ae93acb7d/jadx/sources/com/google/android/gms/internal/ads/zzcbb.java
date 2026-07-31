package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcbb {
    public final ListenableFuture zza(Context context, int i) {
        zzcca zzccaVar = new zzcca();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzy(context)) {
            zzcbv.zza.execute(new zzcba(this, context, zzccaVar));
        }
        return zzccaVar;
    }
}

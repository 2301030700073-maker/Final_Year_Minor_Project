package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbbq implements Runnable {
    final /* synthetic */ View zza;
    final /* synthetic */ zzbbu zzb;

    zzbbq(zzbbu zzbbuVar, View view) {
        this.zza = view;
        Objects.requireNonNull(zzbbuVar);
        this.zzb = zzbbuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}

package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcdb implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcdf zzb;

    zzcdb(zzcdf zzcdfVar, boolean z) {
        this.zza = z;
        Objects.requireNonNull(zzcdfVar);
        this.zzb = zzcdfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzI("windowVisibilityChanged", new String[]{"isVisible", String.valueOf(this.zza)});
    }
}

package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcda implements Runnable {
    final /* synthetic */ zzcdf zza;

    zzcda(zzcdf zzcdfVar) {
        Objects.requireNonNull(zzcdfVar);
        this.zza = zzcdfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzI("surfaceDestroyed", new String[0]);
    }
}

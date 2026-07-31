package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzayi implements Runnable {
    final /* synthetic */ zzayk zza;

    zzayi(zzayk zzaykVar) {
        Objects.requireNonNull(zzaykVar);
        this.zza = zzaykVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd();
    }
}

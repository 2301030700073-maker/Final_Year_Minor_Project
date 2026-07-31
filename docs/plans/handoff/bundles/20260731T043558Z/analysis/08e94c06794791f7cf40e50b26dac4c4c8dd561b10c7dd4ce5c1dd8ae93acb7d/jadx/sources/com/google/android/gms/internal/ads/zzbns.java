package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbns implements Runnable {
    final /* synthetic */ zzbnv zza;

    zzbns(zzbnv zzbnvVar) {
        Objects.requireNonNull(zzbnvVar);
        this.zza = zzbnvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb();
    }
}

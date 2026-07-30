package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfqx implements Runnable {
    final /* synthetic */ zzfrc zza;

    zzfqx(zzfrc zzfrcVar) {
        Objects.requireNonNull(zzfrcVar);
        this.zza = zzfrcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzh().zzc();
    }
}

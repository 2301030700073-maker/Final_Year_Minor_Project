package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfpn implements Runnable {
    final /* synthetic */ zzfpo zza;

    zzfpn(zzfpo zzfpoVar) {
        Objects.requireNonNull(zzfpoVar);
        this.zza = zzfpoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfpo zzfpoVar = this.zza;
        AtomicBoolean zzf = zzfpoVar.zzf();
        float zzc = zzfpoVar.zzc();
        zzf.set(false);
        if (((Float) zzfpoVar.zze().getAndSet(Float.valueOf(zzc))).floatValue() != zzc) {
            zzfpoVar.zzd().post(new zzfpm(this, zzc));
        }
    }
}

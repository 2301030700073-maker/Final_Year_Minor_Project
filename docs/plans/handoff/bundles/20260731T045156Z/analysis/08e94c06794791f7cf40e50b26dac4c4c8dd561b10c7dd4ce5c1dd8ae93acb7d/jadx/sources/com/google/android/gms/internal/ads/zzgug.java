package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgug implements Runnable {
    final Future zza;
    final zzguf zzb;

    zzgug(Future future, zzguf zzgufVar) {
        this.zza = future;
        this.zzb = zzgufVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Future future = this.zza;
        if ((future instanceof zzgvk) && (zza = zzgvl.zza((zzgvk) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzgui.zzs(future));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzglz zzb = zzgma.zzb(this);
        zzb.zza(this.zzb);
        return zzb.toString();
    }
}

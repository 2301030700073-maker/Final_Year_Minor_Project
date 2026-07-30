package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
final class zzgce implements Runnable {
    final Future zza;
    final zzgcd zzb;

    public zzgce(Future future, zzgcd zzgcdVar) {
        this.zza = future;
        this.zzb = zzgcdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Object obj = this.zza;
        if ((obj instanceof zzgdl) && (zza = zzgdm.zza((zzgdl) obj)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzgch.zzp(this.zza));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzfuh zza = zzfuj.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}

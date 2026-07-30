package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzgcw extends zzgcb implements zzgcr {
    private final ScheduledFuture zza;

    public zzgcw(InterfaceFutureC3942wq interfaceFutureC3942wq, ScheduledFuture scheduledFuture) {
        super(interfaceFutureC3942wq);
        this.zza = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgca, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = zzb().cancel(z);
        if (cancel) {
            this.zza.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.zza.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.zza.getDelay(timeUnit);
    }
}

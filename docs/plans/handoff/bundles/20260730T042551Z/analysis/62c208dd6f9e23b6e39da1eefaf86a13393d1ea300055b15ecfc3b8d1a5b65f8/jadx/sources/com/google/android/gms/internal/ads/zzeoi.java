package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
final class zzeoi {
    public final InterfaceFutureC3942wq zza;
    private final long zzb;
    private final Clock zzc;

    public zzeoi(InterfaceFutureC3942wq interfaceFutureC3942wq, long j, Clock clock) {
        this.zza = interfaceFutureC3942wq;
        this.zzc = clock;
        this.zzb = clock.elapsedRealtime() + j;
    }

    public final boolean zza() {
        return this.zzb < this.zzc.elapsedRealtime();
    }
}

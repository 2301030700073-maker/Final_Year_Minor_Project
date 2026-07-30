package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfjx {
    private final Object zza;
    private final long zzb;
    private final Clock zzc;
    private final long zzd = ((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzA)).longValue() * 1000;

    public zzfjx(Object obj, Clock clock) {
        this.zza = obj;
        this.zzc = clock;
        this.zzb = clock.currentTimeMillis();
    }

    public final long zza() {
        return (this.zzd + Math.min(Math.max(((Long) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzv)).longValue(), -900000L), 10000L)) - (this.zzc.currentTimeMillis() - this.zzb);
    }

    public final Object zzb() {
        return this.zza;
    }

    public final boolean zzc() {
        return this.zzc.currentTimeMillis() >= this.zzb + this.zzd;
    }
}

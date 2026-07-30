package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzog {
    public final String zza;
    private final zzof zzb;
    private final Object zzc;

    static {
        if (zzei.zza < 31) {
            new zzog(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        } else {
            int i = zzof.zzb;
        }
    }

    public zzog(LogSessionId logSessionId, String str) {
        this.zzb = new zzof(logSessionId);
        this.zza = str;
        this.zzc = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzog)) {
            return false;
        }
        zzog zzogVar = (zzog) obj;
        return Objects.equals(this.zza, zzogVar.zza) && Objects.equals(this.zzb, zzogVar.zzb) && Objects.equals(this.zzc, zzogVar.zzc);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb, this.zzc);
    }

    public final LogSessionId zza() {
        zzof zzofVar = this.zzb;
        zzofVar.getClass();
        return zzofVar.zza;
    }

    public zzog(String str) {
        zzcw.zzf(zzei.zza < 31);
        this.zza = str;
        this.zzb = null;
        this.zzc = new Object();
    }
}

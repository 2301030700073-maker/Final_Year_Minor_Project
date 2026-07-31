package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import android.os.Build;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzpc {
    public static final zzpc zza;
    public final String zzb;
    private final zzpb zzc;
    private final Object zzd;

    static {
        new zzpc("");
        zza = new zzpc("preload");
    }

    public zzpc(String str) {
        this.zzb = str;
        this.zzc = Build.VERSION.SDK_INT >= 31 ? new zzpb() : null;
        this.zzd = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpc)) {
            return false;
        }
        zzpc zzpcVar = (zzpc) obj;
        return Objects.equals(this.zzb, zzpcVar.zzb) && Objects.equals(this.zzc, zzpcVar.zzc) && Objects.equals(this.zzd, zzpcVar.zzd);
    }

    public final int hashCode() {
        return Objects.hash(this.zzb, this.zzc, this.zzd);
    }

    public final synchronized LogSessionId zza() {
        zzpb zzpbVar;
        zzpbVar = this.zzc;
        if (zzpbVar == null) {
            throw null;
        }
        zzpb zzpbVar2 = zzpbVar;
        return zzpbVar.zza;
    }

    public final synchronized void zzb(LogSessionId logSessionId) {
        zzpb zzpbVar = this.zzc;
        if (zzpbVar == null) {
            throw null;
        }
        zzpb zzpbVar2 = zzpbVar;
        zzgmd.zzh(zzpbVar.zza.equals(LogSessionId.LOG_SESSION_ID_NONE));
        zzpbVar.zza = logSessionId;
    }
}

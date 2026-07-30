package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C4122zt;

/* loaded from: classes.dex */
public final class zzadk {
    public final zzadn zza;
    public final zzadn zzb;

    public zzadk(zzadn zzadnVar, zzadn zzadnVar2) {
        this.zza = zzadnVar;
        this.zzb = zzadnVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadk.class == obj.getClass()) {
            zzadk zzadkVar = (zzadk) obj;
            if (this.zza.equals(zzadkVar.zza) && this.zzb.equals(zzadkVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        zzadn zzadnVar = this.zza;
        return C4122zt.m8827new("[", zzadnVar.toString(), zzadnVar.equals(this.zzb) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : ", ".concat(this.zzb.toString()), "]");
    }
}

package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzcf {
    public static final zzcf zza = new zzcf(-1, -1, -1);
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    public zzcf(int i, int i2, int i3) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = zzei.zzJ(i3) ? zzei.zzk(i3) * i2 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcf)) {
            return false;
        }
        zzcf zzcfVar = (zzcf) obj;
        return this.zzb == zzcfVar.zzb && this.zzc == zzcfVar.zzc && this.zzd == zzcfVar.zzd;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
        sb.append(this.zzb);
        sb.append(", channelCount=");
        sb.append(this.zzc);
        sb.append(", encoding=");
        return V1.m2506this(sb, this.zzd, "]");
    }
}

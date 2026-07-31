package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhgd {
    private final Class zza;
    private final zzhsz zzb;

    /* synthetic */ zzhgd(Class cls, zzhsz zzhszVar, byte[] bArr) {
        this.zza = cls;
        this.zzb = zzhszVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhgd)) {
            return false;
        }
        zzhgd zzhgdVar = (zzhgd) obj;
        return zzhgdVar.zza.equals(this.zza) && zzhgdVar.zzb.equals(this.zzb);
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        zzhsz zzhszVar = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String valueOf = String.valueOf(zzhszVar);
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 21 + String.valueOf(valueOf).length());
        sb.append(simpleName);
        sb.append(", object identifier: ");
        sb.append(valueOf);
        return sb.toString();
    }
}

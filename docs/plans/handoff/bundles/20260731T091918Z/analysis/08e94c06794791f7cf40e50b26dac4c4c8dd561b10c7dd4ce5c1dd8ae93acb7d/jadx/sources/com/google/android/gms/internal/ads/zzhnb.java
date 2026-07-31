package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhnb extends zzhpp {
    private final zzhmz zza;
    private final zzhmx zzb;
    private final zzhmy zzc;
    private final zzhna zzd;

    /* synthetic */ zzhnb(zzhmz zzhmzVar, zzhmx zzhmxVar, zzhmy zzhmyVar, zzhna zzhnaVar, byte[] bArr) {
        this.zza = zzhmzVar;
        this.zzb = zzhmxVar;
        this.zzc = zzhmyVar;
        this.zzd = zzhnaVar;
    }

    public static zzhmw zzb() {
        return new zzhmw(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhnb)) {
            return false;
        }
        zzhnb zzhnbVar = (zzhnb) obj;
        return zzhnbVar.zza == this.zza && zzhnbVar.zzb == this.zzb && zzhnbVar.zzc == this.zzc && zzhnbVar.zzd == this.zzd;
    }

    public final int hashCode() {
        return Objects.hash(zzhnb.class, this.zza, this.zzb, this.zzc, this.zzd);
    }

    public final String toString() {
        String obj = this.zzd.toString();
        int length = obj.length();
        String obj2 = this.zzc.toString();
        int length2 = obj2.length();
        String obj3 = this.zza.toString();
        int length3 = obj3.length();
        String obj4 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 39 + length2 + 12 + length3 + 9 + obj4.length() + 1);
        sb.append("ECDSA Parameters (variant: ");
        sb.append(obj);
        sb.append(", hashType: ");
        sb.append(obj2);
        sb.append(", encoding: ");
        sb.append(obj3);
        sb.append(", curve: ");
        sb.append(obj4);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgwj
    public final boolean zza() {
        return this.zzd != zzhna.zzd;
    }

    public final zzhmz zzc() {
        return this.zza;
    }

    public final zzhmx zzd() {
        return this.zzb;
    }

    public final zzhmy zze() {
        return this.zzc;
    }

    public final zzhna zzf() {
        return this.zzd;
    }
}

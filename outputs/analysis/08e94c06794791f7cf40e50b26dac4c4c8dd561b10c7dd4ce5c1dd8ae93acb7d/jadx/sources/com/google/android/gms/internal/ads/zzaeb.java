package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaeb {
    public final zzaee zza;
    public final zzaee zzb;

    public zzaeb(zzaee zzaeeVar, zzaee zzaeeVar2) {
        this.zza = zzaeeVar;
        this.zzb = zzaeeVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaeb zzaebVar = (zzaeb) obj;
            if (this.zza.equals(zzaebVar.zza) && this.zzb.equals(zzaebVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        zzaee zzaeeVar = this.zza;
        zzaee zzaeeVar2 = this.zzb;
        String obj = zzaeeVar.toString();
        String concat = zzaeeVar.equals(zzaeeVar2) ? "" : ", ".concat(zzaeeVar2.toString());
        StringBuilder sb = new StringBuilder(obj.length() + 1 + concat.length() + 1);
        sb.append("[");
        sb.append(obj);
        sb.append(concat);
        sb.append("]");
        return sb.toString();
    }
}

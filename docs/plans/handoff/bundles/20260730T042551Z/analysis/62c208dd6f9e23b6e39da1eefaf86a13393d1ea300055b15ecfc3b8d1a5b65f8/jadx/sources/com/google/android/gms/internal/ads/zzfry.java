package com.google.android.gms.internal.ads;

import defpackage.Creturn;

/* loaded from: classes.dex */
final class zzfry extends zzfta {
    private final int zza;
    private final String zzb;

    public /* synthetic */ zzfry(int i, String str, zzfrx zzfrxVar) {
        this.zza = i;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfta) {
            zzfta zzftaVar = (zzfta) obj;
            if (this.zza == zzftaVar.zza() && ((str = this.zzb) != null ? str.equals(zzftaVar.zzb()) : zzftaVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zzb;
        return (str == null ? 0 : str.hashCode()) ^ ((this.zza ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayState{statusCode=");
        sb.append(this.zza);
        sb.append(", sessionToken=");
        return Creturn.m7984try(sb, this.zzb, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzfta
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfta
    public final String zzb() {
        return this.zzb;
    }
}

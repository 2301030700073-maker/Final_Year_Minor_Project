package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
final class zzeay extends zzebc {
    private final String zza;
    private final String zzb;
    private final Drawable zzc;

    public zzeay(String str, String str2, Drawable drawable) {
        this.zza = str;
        if (str2 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.zzb = str2;
        this.zzc = drawable;
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzebc) {
            zzebc zzebcVar = (zzebc) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzebcVar.zzb()) : zzebcVar.zzb() == null) {
                if (this.zzb.equals(zzebcVar.zzc()) && ((drawable = this.zzc) != null ? drawable.equals(zzebcVar.zza()) : zzebcVar.zza() == null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = (((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        Drawable drawable = this.zzc;
        return (hashCode * 1000003) ^ (drawable != null ? drawable.hashCode() : 0);
    }

    public final String toString() {
        return "OfflineAdAssets{advertiserName=" + this.zza + ", imageUrl=" + this.zzb + ", icon=" + String.valueOf(this.zzc) + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzebc
    public final Drawable zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzebc
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzebc
    public final String zzc() {
        return this.zzb;
    }
}

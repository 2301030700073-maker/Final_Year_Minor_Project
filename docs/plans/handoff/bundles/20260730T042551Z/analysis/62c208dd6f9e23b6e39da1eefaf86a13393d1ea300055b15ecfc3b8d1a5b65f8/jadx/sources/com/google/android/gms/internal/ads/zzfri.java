package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzfri extends zzgax {
    Object zza;

    public zzfri(Object obj, Runnable runnable) {
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final String zza() {
        Object obj = this.zza;
        return obj == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : obj.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb() {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final boolean zzc(Object obj) {
        return super.zzc(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final boolean zzd(Throwable th) {
        return super.zzd(th);
    }
}

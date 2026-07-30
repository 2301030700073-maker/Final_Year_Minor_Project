package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbkd implements zzbke {
    final /* synthetic */ zzcab zza;

    public zzbkd(zzbkf zzbkfVar, zzcab zzcabVar) {
        this.zza = zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbke
    public final void zza(String str) {
        this.zza.zzd(new zzbnv(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbke
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }
}

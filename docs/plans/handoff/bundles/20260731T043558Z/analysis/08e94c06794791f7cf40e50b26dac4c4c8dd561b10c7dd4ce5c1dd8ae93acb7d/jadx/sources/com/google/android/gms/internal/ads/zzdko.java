package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdko implements zzifh {
    private final zzdkm zza;

    private zzdko(zzdkm zzdkmVar) {
        this.zza = zzdkmVar;
    }

    public static zzdko zzc(zzdkm zzdkmVar) {
        return new zzdko(zzdkmVar);
    }

    public static JSONObject zzd(zzdkm zzdkmVar) {
        JSONObject zzc = zzdkmVar.zzc();
        zzifp.zzb(zzc);
        return zzc;
    }

    public final JSONObject zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}

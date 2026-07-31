package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbmm implements zzbmn {
    final /* synthetic */ zzcca zza;

    zzbmm(zzbmo zzbmoVar, zzcca zzccaVar) {
        this.zza = zzccaVar;
        Objects.requireNonNull(zzbmoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zza(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbmn
    public final void zzb(String str) {
        this.zza.zzd(new zzbqe(str));
    }
}

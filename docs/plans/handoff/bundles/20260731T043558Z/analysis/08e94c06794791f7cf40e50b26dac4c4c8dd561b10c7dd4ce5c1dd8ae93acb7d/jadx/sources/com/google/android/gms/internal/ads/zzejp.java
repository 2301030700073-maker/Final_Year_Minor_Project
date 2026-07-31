package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzejp implements zzehm {
    private final zzdsy zza;

    public zzejp(zzdsy zzdsyVar) {
        this.zza = zzdsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzehm
    public final zzehn zza(String str, JSONObject jSONObject) throws zzfgu {
        return new zzehn(this.zza.zza(str, jSONObject), new zzeiz(), str);
    }
}

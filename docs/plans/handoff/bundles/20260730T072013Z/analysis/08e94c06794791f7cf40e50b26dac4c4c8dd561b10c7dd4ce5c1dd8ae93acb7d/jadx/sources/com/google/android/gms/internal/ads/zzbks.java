package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbks implements zzblx {
    zzbks() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzc;
        zzcgy zzcgyVar = (zzcgy) obj;
        zzbhv zzar = zzcgyVar.zzar();
        if (zzar == null || (zzc = zzar.zzc()) == null) {
            zzcgyVar.zzd("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzcgyVar.zzd("nativeAdViewSignalsReady", zzc);
        }
    }
}

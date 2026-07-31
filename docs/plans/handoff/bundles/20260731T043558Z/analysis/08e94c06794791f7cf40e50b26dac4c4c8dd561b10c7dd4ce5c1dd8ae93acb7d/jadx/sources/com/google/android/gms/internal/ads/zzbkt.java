package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbkt implements zzblx {
    zzbkt() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzd;
        zzcgy zzcgyVar = (zzcgy) obj;
        zzbhv zzar = zzcgyVar.zzar();
        if (zzar == null || (zzd = zzar.zzd()) == null) {
            zzcgyVar.zzd("nativeClickMetaReady", new JSONObject());
        } else {
            zzcgyVar.zzd("nativeClickMetaReady", zzd);
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbiv implements zzbjp {
    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject zzb;
        zzcex zzcexVar = (zzcex) obj;
        zzbfk zzK = zzcexVar.zzK();
        if (zzK == null || (zzb = zzK.zzb()) == null) {
            zzcexVar.zze("nativeClickMetaReady", new JSONObject());
        } else {
            zzcexVar.zze("nativeClickMetaReady", zzb);
        }
    }
}

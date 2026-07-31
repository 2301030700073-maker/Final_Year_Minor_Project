package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbll implements zzblx {
    zzbll() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgy zzcgyVar = (zzcgy) obj;
        if (map.containsKey("start")) {
            zzcgyVar.zzas(true);
        }
        if (map.containsKey("stop")) {
            zzcgyVar.zzas(false);
        }
    }
}

package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzblj implements zzblx {
    zzblj() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgy zzcgyVar = (zzcgy) obj;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzcgyVar.zzdp();
        } else if ("resume".equals(str)) {
            zzcgyVar.zzdq();
        }
    }
}

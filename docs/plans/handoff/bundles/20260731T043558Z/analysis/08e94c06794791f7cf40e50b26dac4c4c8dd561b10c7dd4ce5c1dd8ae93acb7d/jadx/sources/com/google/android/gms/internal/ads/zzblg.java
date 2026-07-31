package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzblg implements zzblx {
    zzblg() {
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("string");
        String.valueOf(str);
        String valueOf = String.valueOf(str);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Received log message: ".concat(valueOf));
    }
}

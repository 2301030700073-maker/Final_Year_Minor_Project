package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzchv implements zzblx {
    final /* synthetic */ zzcib zza;

    zzchv(zzcib zzcibVar) {
        Objects.requireNonNull(zzcibVar);
        this.zza = zzcibVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                zzcib zzcibVar = this.zza;
                synchronized (zzcibVar) {
                    if (zzcibVar.zzaX() != parseInt) {
                        zzcibVar.zzaY(parseInt);
                        zzcibVar.requestLayout();
                    }
                }
            } catch (Exception e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Exception occurred while getting webview content height", e);
            }
        }
    }
}

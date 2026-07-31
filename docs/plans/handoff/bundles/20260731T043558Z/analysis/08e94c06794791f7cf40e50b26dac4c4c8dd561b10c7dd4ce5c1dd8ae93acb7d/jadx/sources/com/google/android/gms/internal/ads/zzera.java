package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzera implements zzexy {
    private final String zza;
    private final boolean zzb;

    public zzera(String str, boolean z) {
        this.zza = str;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        String str = this.zza;
        zzcxq zzcxqVar = (zzcxq) obj;
        if (str != null) {
            Bundle zza = zzfhc.zza(zzcxqVar.zza, "pii");
            zza.putString("afai", str);
            zza.putBoolean("is_afai_lat", this.zzb);
        }
    }
}

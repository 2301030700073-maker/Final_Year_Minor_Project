package com.google.android.gms.internal.ads;

import android.os.Bundle;
import io.sentry.protocol.Device;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzesg implements zzexy {
    private final double zza;
    private final boolean zzb;

    public zzesg(double d, boolean z) {
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzcxq) obj).zza;
        Bundle zza = zzfhc.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfhc.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.zzb);
        zza2.putDouble(Device.JsonKeys.BATTERY_LEVEL, this.zza);
    }
}

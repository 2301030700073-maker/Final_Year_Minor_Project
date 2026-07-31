package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzevj implements zzexy {
    private final Boolean zza;

    public zzevj(Boolean bool) {
        this.zza = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Boolean bool = this.zza;
        zzcxq zzcxqVar = (zzcxq) obj;
        if (bool != null) {
            zzcxqVar.zza.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzevx implements zzexy {
    public final zzfft zza;

    public zzevx(zzfft zzfftVar) {
        this.zza = zzfftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexy
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzcxq zzcxqVar = (zzcxq) obj;
        zzfft zzfftVar = this.zza;
        if (zzfftVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmV)).booleanValue()) {
                return;
            }
            Bundle bundle = zzcxqVar.zza;
            bundle.putBoolean("render_in_browser", zzfftVar.zzb());
            bundle.putBoolean("disable_ml", zzfftVar.zzc());
        }
    }
}

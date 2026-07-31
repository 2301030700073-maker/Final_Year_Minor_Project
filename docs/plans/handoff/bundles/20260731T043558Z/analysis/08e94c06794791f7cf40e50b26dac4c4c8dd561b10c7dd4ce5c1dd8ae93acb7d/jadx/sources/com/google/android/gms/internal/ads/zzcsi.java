package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcsi implements zzczi {
    private final zzcgy zza;
    private final zzdvi zzb;
    private final zzffu zzc;

    zzcsi(zzcgy zzcgyVar, zzdvi zzdviVar, zzffu zzffuVar) {
        this.zza = zzcgyVar;
        this.zzb = zzdviVar;
        this.zzc = zzffuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczi
    public final void zzdw() {
        zzcgy zzcgyVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznV)).booleanValue() || (zzcgyVar = this.zza) == null) {
            return;
        }
        String str = true != com.google.android.gms.ads.internal.util.zzab.zza(zzcgyVar.zzE()) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1";
        zzdvh zza = this.zzb.zza();
        zza.zzc("action", "hcp");
        zza.zzc("hcp", str);
        zza.zzb(this.zzc);
        zza.zzd();
    }
}

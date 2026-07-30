package com.google.android.gms.internal.ads;

import android.view.View;
import com.facebook.appevents.AppEventsConstants;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdmr {
    private final zzdvi zza;

    zzdmr(zzdvi zzdviVar) {
        this.zza = zzdviVar;
    }

    public final void zza(View view, zzffu zzffuVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznV)).booleanValue() || view == null) {
            return;
        }
        String str = true != com.google.android.gms.ads.internal.util.zzab.zza(view) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1";
        zzdvh zza = this.zza.zza();
        zza.zzc("action", "hcp");
        zza.zzc("hcp", str);
        zza.zzb(zzffuVar);
        zza.zzd();
    }
}

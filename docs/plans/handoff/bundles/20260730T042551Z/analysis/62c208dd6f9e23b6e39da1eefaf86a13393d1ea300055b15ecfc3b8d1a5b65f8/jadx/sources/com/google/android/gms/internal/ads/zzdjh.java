package com.google.android.gms.internal.ads;

import android.view.View;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;

/* loaded from: classes.dex */
public final class zzdjh {
    private final zzdrw zza;

    public zzdjh(zzdrw zzdrwVar) {
        this.zza = zzdrwVar;
    }

    public final void zza(View view, zzfbo zzfboVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmK)).booleanValue() || view == null) {
            return;
        }
        String str = true != com.google.android.gms.ads.internal.util.zzac.zza(view) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES;
        zzdrv zza = this.zza.zza();
        zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "hcp");
        zza.zzb("hcp", str);
        zza.zzc(zzfboVar);
        zza.zzg();
    }
}

package com.google.android.gms.internal.ads;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;

/* loaded from: classes.dex */
public final class zzcpn implements zzcwn {
    private final zzcex zza;
    private final zzdrw zzb;
    private final zzfbo zzc;

    public zzcpn(zzcex zzcexVar, zzdrw zzdrwVar, zzfbo zzfboVar) {
        this.zza = zzcexVar;
        this.zzb = zzdrwVar;
        this.zzc = zzfboVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzr() {
        zzcex zzcexVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmK)).booleanValue() || (zzcexVar = this.zza) == null) {
            return;
        }
        String str = true != com.google.android.gms.ads.internal.util.zzac.zza(zzcexVar.zzF()) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES;
        zzdrv zza = this.zzb.zza();
        zza.zzb(NativeProtocol.WEB_DIALOG_ACTION, "hcp");
        zza.zzb("hcp", str);
        zza.zzc(this.zzc);
        zza.zzg();
    }
}

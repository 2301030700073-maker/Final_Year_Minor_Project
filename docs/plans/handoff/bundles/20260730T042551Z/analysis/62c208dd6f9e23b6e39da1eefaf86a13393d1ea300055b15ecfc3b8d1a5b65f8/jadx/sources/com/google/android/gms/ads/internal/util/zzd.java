package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbeh;
import com.google.android.gms.internal.ads.zzbzz;
import defpackage.C2635dR;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzd {
    public static void zza(Context context) {
        Object obj = com.google.android.gms.ads.internal.util.client.zzl.f9738do;
        if (((Boolean) zzbeh.zza.zze()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 0 || com.google.android.gms.ads.internal.util.client.zzl.zzl()) {
                    return;
                }
                InterfaceFutureC3942wq zzb = new C2635dR(context).zzb();
                zzo.zzi("Updating ad debug logging enablement.");
                zzbzz.zza(zzb, "AdDebugLogUpdater.updateEnablement");
            } catch (Exception e) {
                zzo.zzk("Fail to determine debug setting.", e);
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfqr {
    private static int zza = 2;

    public static void zza(Context context) {
        context.registerReceiver(new zzfqq(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
    }

    public static int zzb() {
        if (zzfqn.zzb() != zzfpa.CTV) {
            return 2;
        }
        return zza;
    }
}

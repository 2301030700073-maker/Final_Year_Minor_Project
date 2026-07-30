package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;

/* loaded from: classes.dex */
public final class zzfmf {
    private static UiModeManager zza;

    public static zzfkv zza() {
        UiModeManager uiModeManager = zza;
        if (uiModeManager == null) {
            return zzfkv.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        return currentModeType != 1 ? currentModeType != 4 ? zzfkv.OTHER : zzfkv.CTV : zzfkv.MOBILE;
    }

    public static void zzb(Context context) {
        if (context != null) {
            zza = (UiModeManager) context.getSystemService("uimode");
        }
    }
}

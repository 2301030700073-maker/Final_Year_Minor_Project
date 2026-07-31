package com.google.android.gms.internal.ads;

import android.os.Build;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public interface zzim extends zzbb {
    static {
        String str = zzep.zza;
        String zza = zzglm.zza(Build.DEVICE);
        if (zza.contains("emulator") || zza.contains("emu64a") || zza.contains("emu64x")) {
            return;
        }
        zza.contains("generic");
    }

    void zzD(zzml zzmlVar);

    void zzE(zzml zzmlVar);

    int zzF();

    void zzG(zzuw zzuwVar);

    void zzH();
}

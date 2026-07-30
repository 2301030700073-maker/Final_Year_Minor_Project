package com.google.android.gms.internal.ads;

import com.google.android.gms.wearable.WearableStatusCodes;

/* loaded from: classes.dex */
final class zzfux extends zzfva {
    public zzfux(zzfuy zzfuyVar, zzfvc zzfvcVar, CharSequence charSequence, int i) {
        super(zzfvcVar, charSequence);
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    public final int zzc(int i) {
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfva
    public final int zzd(int i) {
        CharSequence charSequence = ((zzfva) this).zzb;
        int i2 = i + WearableStatusCodes.TARGET_NODE_NOT_CONNECTED;
        if (i2 < charSequence.length()) {
            return i2;
        }
        return -1;
    }
}

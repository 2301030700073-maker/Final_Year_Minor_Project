package com.google.android.gms.internal.ads;

import com.google.android.gms.wearable.WearableStatusCodes;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzfuy implements zzfvb {
    public zzfuy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzfvb
    public final /* synthetic */ Iterator zza(zzfvc zzfvcVar, CharSequence charSequence) {
        return new zzfux(this, zzfvcVar, charSequence, WearableStatusCodes.TARGET_NODE_NOT_CONNECTED);
    }
}

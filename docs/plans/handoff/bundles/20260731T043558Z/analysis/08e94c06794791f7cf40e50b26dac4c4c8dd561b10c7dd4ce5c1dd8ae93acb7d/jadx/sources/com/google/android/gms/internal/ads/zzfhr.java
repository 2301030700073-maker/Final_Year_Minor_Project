package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfhr implements zzifh {
    private zzfhr(zzfhq zzfhqVar) {
    }

    public static zzfhr zza(zzfhq zzfhqVar) {
        return new zzfhr(zzfhqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        Clock defaultClock = DefaultClock.getInstance();
        zzifp.zzb(defaultClock);
        return defaultClock;
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzear implements zzifh {
    private final zzifq zza;

    private zzear(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
    }

    public static zzear zzc(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzear(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzebn zzb() {
        return new zzebn((Context) this.zza.zzb(), zzfjn.zzc());
    }
}

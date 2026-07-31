package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeid implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;

    private zzeid(zzifq zzifqVar, zzifq zzifqVar2) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
    }

    public static zzeid zzc(zzifq zzifqVar, zzifq zzifqVar2) {
        return new zzeid(zzifqVar, zzifqVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzeic zzb() {
        return new zzeic((Context) this.zza.zzb(), (zzcqu) this.zzb.zzb());
    }
}

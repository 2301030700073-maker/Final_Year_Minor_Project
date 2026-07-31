package com.google.android.gms.internal.ads;

import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcrp implements zzifh {
    private final zzcrn zza;

    private zzcrp(zzcrn zzcrnVar) {
        this.zza = zzcrnVar;
    }

    public static zzcrp zzc(zzcrn zzcrnVar) {
        return new zzcrp(zzcrnVar);
    }

    public static View zzd(zzcrn zzcrnVar) {
        View zzb = zzcrnVar.zzb();
        zzifp.zzb(zzb);
        return zzb;
    }

    public final View zza() {
        return zzd(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* synthetic */ Object zzb() {
        return zzd(this.zza);
    }
}

package com.google.android.gms.internal.ads;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzeto implements zzifh {
    private final zzifq zza;
    private final zzifq zzb;
    private final zzifq zzc;

    private zzeto(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        this.zza = zzifqVar;
        this.zzb = zzifqVar2;
        this.zzc = zzifqVar3;
    }

    public static zzeto zza(zzifq zzifqVar, zzifq zzifqVar2, zzifq zzifqVar3) {
        return new zzeto(zzifqVar, zzifqVar2, zzifqVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzifw, com.google.android.gms.internal.ads.zzifv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Object zzb = ((zzept) this.zza).zzb();
        Object obj = (zzeso) this.zzb.zzb();
        if (true == ((List) this.zzc.zzb()).contains(ExifInterface.GPS_MEASUREMENT_2D)) {
            zzb = obj;
        }
        zzifp.zzb(zzb);
        return (zzeya) zzb;
    }
}

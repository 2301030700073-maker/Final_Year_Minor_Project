package com.google.android.gms.internal.ads;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfvm {
    private final zzfvi zza;

    public final /* synthetic */ zzfvk zza() {
        zzhwo zzbu = this.zza.zzbu();
        Intrinsics.checkNotNullExpressionValue(zzbu, "build(...)");
        return (zzfvk) zzbu;
    }

    public final /* synthetic */ zzhzs zzb() {
        Map zzb = this.zza.zzb();
        Intrinsics.checkNotNullExpressionValue(zzb, "getQueryIdToAdQualityDataMapMap(...)");
        return new zzhzs(zzb);
    }

    public final void zzc(zzhzs zzhzsVar, String key, zzfvg value) {
        Intrinsics.checkNotNullParameter(zzhzsVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.zza.zzc(key, value);
    }

    public final /* synthetic */ void zzd(zzhzs zzhzsVar, String key) {
        Intrinsics.checkNotNullParameter(zzhzsVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        this.zza.zza(key);
    }
}

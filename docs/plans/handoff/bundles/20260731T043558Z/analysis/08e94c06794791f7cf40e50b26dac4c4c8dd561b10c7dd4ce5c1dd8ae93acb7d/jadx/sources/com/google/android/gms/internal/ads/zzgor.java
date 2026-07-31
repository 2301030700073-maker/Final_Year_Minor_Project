package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgor extends zzgot {
    zzgor() {
        super(null);
    }

    static final zzgot zzf(int i) {
        zzgot zzgotVar;
        zzgot zzgotVar2;
        zzgot zzgotVar3;
        if (i < 0) {
            zzgotVar3 = zzgot.zzb;
            return zzgotVar3;
        }
        if (i > 0) {
            zzgotVar2 = zzgot.zzc;
            return zzgotVar2;
        }
        zzgotVar = zzgot.zza;
        return zzgotVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final zzgot zza(Object obj, Object obj2, Comparator comparator) {
        return zzf(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final zzgot zzb(int i, int i2) {
        return zzf(Integer.compare(i, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final zzgot zzc(boolean z, boolean z2) {
        return zzf(Boolean.compare(z2, z));
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final zzgot zzd(boolean z, boolean z2) {
        return zzf(Boolean.compare(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final int zze() {
        return 0;
    }
}

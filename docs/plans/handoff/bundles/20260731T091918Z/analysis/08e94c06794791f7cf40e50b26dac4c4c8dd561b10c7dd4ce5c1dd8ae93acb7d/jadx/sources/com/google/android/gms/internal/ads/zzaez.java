package com.google.android.gms.internal.ads;

import androidx.media3.extractor.avi.AviExtractor;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaez implements zzaev {
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzaez(int i, int i2, int i3, int i4) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzaez zzb(zzeg zzegVar) {
        int zzC = zzegVar.zzC();
        zzegVar.zzk(8);
        int zzC2 = zzegVar.zzC();
        int zzC3 = zzegVar.zzC();
        zzegVar.zzk(4);
        int zzC4 = zzegVar.zzC();
        zzegVar.zzk(12);
        return new zzaez(zzC, zzC2, zzC3, zzC4);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final int zza() {
        return AviExtractor.FOURCC_avih;
    }
}

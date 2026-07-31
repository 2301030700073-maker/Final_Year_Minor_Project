package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzlk extends zzui {
    private final zzbe zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzlk(zzll zzllVar, zzbf zzbfVar) {
        super(zzbfVar);
        Objects.requireNonNull(zzllVar);
        this.zzc = new zzbe();
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzbf
    public final zzbd zzd(int i, zzbd zzbdVar, boolean z) {
        zzbf zzbfVar = this.zzb;
        zzbd zzd = zzbfVar.zzd(i, zzbdVar, z);
        if (zzbfVar.zzb(zzd.zzc, this.zzc, 0L).zzb()) {
            Object obj = zzbdVar.zza;
            Object obj2 = zzbdVar.zzb;
            int i2 = zzbdVar.zzc;
            long j = zzbdVar.zzd;
            long j2 = zzbdVar.zze;
            zzd.zza(obj, obj2, i2, j, 0L, zzc.zza, true);
        } else {
            zzd.zzf = true;
        }
        return zzd;
    }
}

package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.exoplayer.dash.DashMediaSource;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzalp implements zzaki {
    private final zzeg zza = new zzeg();
    private final zzeg zzb = new zzeg();
    private final zzalo zzc;
    private Inflater zzd;

    public zzalp(List list) {
        zzalo zzaloVar = new zzalo();
        this.zzc = zzaloVar;
        zzaloVar.zza(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzeg zzegVar = this.zza;
        zzegVar.zzb(bArr, i2 + i);
        zzegVar.zzh(i);
        if (this.zzd == null) {
            this.zzd = new Inflater();
        }
        zzeg zzegVar2 = this.zzb;
        if (zzep.zzM(zzegVar, zzegVar2, this.zzd)) {
            zzegVar.zzb(zzegVar2.zzi(), zzegVar2.zze());
        }
        zzalo zzaloVar = this.zzc;
        zzaloVar.zzd();
        int zzd = zzegVar.zzd();
        zzcm zzcmVar = null;
        if (zzd >= 2 && zzegVar.zzt() == zzd) {
            zzaloVar.zzb(zzegVar);
            zzcmVar = zzaloVar.zzc(zzegVar);
        }
        zzdgVar.zza(new zzaka(zzcmVar != null ? zzgpe.zzj(zzcmVar) : zzgpe.zzi(), C.TIME_UNSET, DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US));
    }
}

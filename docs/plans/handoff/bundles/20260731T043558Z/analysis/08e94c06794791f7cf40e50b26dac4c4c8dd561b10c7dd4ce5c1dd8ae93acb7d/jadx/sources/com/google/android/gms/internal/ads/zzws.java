package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzws implements zzus, zzur {
    private final zzus zza;
    private final long zzb;
    private zzur zzc;

    public zzws(zzus zzusVar, long j) {
        this.zza = zzusVar;
        this.zzb = j;
    }

    public final zzus zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzb(zzur zzurVar, long j) {
        this.zzc = zzurVar;
        this.zza.zzb(this, j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzc() throws IOException {
        this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final zzwv zzd() {
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zze(zzyk[] zzykVarArr, boolean[] zArr, zzwk[] zzwkVarArr, boolean[] zArr2, long j) {
        zzwk[] zzwkVarArr2 = new zzwk[zzwkVarArr.length];
        int i = 0;
        while (true) {
            zzwk zzwkVar = null;
            if (i >= zzwkVarArr.length) {
                break;
            }
            zzwr zzwrVar = (zzwr) zzwkVarArr[i];
            if (zzwrVar != null) {
                zzwkVar = zzwrVar.zza();
            }
            zzwkVarArr2[i] = zzwkVar;
            i++;
        }
        zzus zzusVar = this.zza;
        long j2 = this.zzb;
        long zze = zzusVar.zze(zzykVarArr, zArr, zzwkVarArr2, zArr2, j - j2);
        for (int i2 = 0; i2 < zzwkVarArr.length; i2++) {
            zzwk zzwkVar2 = zzwkVarArr2[i2];
            if (zzwkVar2 == null) {
                zzwkVarArr[i2] = null;
            } else {
                zzwk zzwkVar3 = zzwkVarArr[i2];
                if (zzwkVar3 == null || ((zzwr) zzwkVar3).zza() != zzwkVar2) {
                    zzwkVarArr[i2] = new zzwr(zzwkVar2, j2);
                }
            }
        }
        return zze + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final void zzf(long j, boolean z) {
        this.zza.zzf(j - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final void zzg(long j) {
        this.zza.zzg(j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zzh() {
        long zzh = this.zza.zzh();
        return zzh == C.TIME_UNSET ? C.TIME_UNSET : zzh + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final long zzi() {
        long zzi = this.zza.zzi();
        if (zzi == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzi + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zzj(long j) {
        long j2 = this.zzb;
        return this.zza.zzj(j - j2) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final long zzk(long j, zzlv zzlvVar) {
        long j2 = this.zzb;
        return this.zza.zzk(j - j2, zzlvVar) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final long zzl() {
        long zzl = this.zza.zzl();
        if (zzl == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzl + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final boolean zzm(zzkn zzknVar) {
        long j = zzknVar.zza;
        long j2 = this.zzb;
        zzkm zza = zzknVar.zza();
        zza.zza(j - j2);
        return this.zza.zzm(zza.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzus, com.google.android.gms.internal.ads.zzwm
    public final boolean zzn() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzwl
    public final /* bridge */ /* synthetic */ void zzs(zzwm zzwmVar) {
        zzur zzurVar = this.zzc;
        zzurVar.getClass();
        zzurVar.zzs(this);
    }

    @Override // com.google.android.gms.internal.ads.zzur
    public final void zzp(zzus zzusVar) {
        zzur zzurVar = this.zzc;
        zzurVar.getClass();
        zzurVar.zzp(this);
    }
}

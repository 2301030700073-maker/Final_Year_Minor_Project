package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
final class zzcdt implements zzfy {
    private final zzfy zza;
    private final long zzb;
    private final zzfy zzc;
    private long zzd;
    private Uri zze;

    public zzcdt(zzfy zzfyVar, int i, zzfy zzfyVar2) {
        this.zza = zzfyVar;
        this.zzb = i;
        this.zzc = zzfyVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int zza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + zza;
            this.zzd = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j < this.zzb) {
            return i3;
        }
        int zza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
        int i4 = i3 + zza2;
        this.zzd += zza2;
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final long zzb(zzgd zzgdVar) {
        zzgd zzgdVar2;
        this.zze = zzgdVar.zza;
        long j = zzgdVar.zze;
        long j2 = this.zzb;
        zzgd zzgdVar3 = null;
        if (j >= j2) {
            zzgdVar2 = null;
        } else {
            long j3 = zzgdVar.zzf;
            long j4 = j2 - j;
            if (j3 != -1) {
                j4 = Math.min(j3, j4);
            }
            zzgdVar2 = new zzgd(zzgdVar.zza, j, j4, null);
        }
        long j5 = zzgdVar.zzf;
        if (j5 == -1 || zzgdVar.zze + j5 > this.zzb) {
            long max = Math.max(this.zzb, zzgdVar.zze);
            long j6 = zzgdVar.zzf;
            zzgdVar3 = new zzgd(zzgdVar.zza, max, j6 != -1 ? Math.min(j6, (zzgdVar.zze + j6) - this.zzb) : -1L, null);
        }
        long zzb = zzgdVar2 != null ? this.zza.zzb(zzgdVar2) : 0L;
        long zzb2 = zzgdVar3 != null ? this.zzc.zzb(zzgdVar3) : 0L;
        this.zzd = zzgdVar.zze;
        if (zzb == -1 || zzb2 == -1) {
            return -1L;
        }
        return zzb + zzb2;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final void zzd() {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final Map zze() {
        return zzfxq.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final void zzf(zzgy zzgyVar) {
    }
}

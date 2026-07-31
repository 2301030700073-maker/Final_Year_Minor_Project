package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.media3.common.C;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzamw {
    private final zzaem zza;
    private final SparseArray zzb = new SparseArray();
    private final SparseArray zzc = new SparseArray();
    private final byte[] zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private boolean zzl;

    public zzamw(zzaem zzaemVar, boolean z, boolean z2) {
        this.zza = zzaemVar;
        byte[] bArr = new byte[128];
        this.zzd = bArr;
        new zzfn(bArr, 0, 0);
        this.zzh = false;
    }

    public final void zza(zzfl zzflVar) {
        this.zzb.append(zzflVar.zzd, zzflVar);
    }

    public final void zzb(zzfk zzfkVar) {
        this.zzc.append(zzfkVar.zza, zzfkVar);
    }

    public final void zzc() {
        this.zzh = false;
    }

    public final void zzd(long j, int i, long j2, boolean z) {
        this.zze = i;
        this.zzg = j2;
        this.zzf = j;
        this.zzl = z;
    }

    public final boolean zze(long j, int i, boolean z) {
        boolean z2 = false;
        if (this.zze == 9) {
            if (z && this.zzh) {
                long j2 = this.zzf;
                int i2 = i + ((int) (j - j2));
                long j3 = this.zzj;
                if (j3 != C.TIME_UNSET) {
                    long j4 = this.zzi;
                    if (j2 != j4) {
                        this.zza.zzx(j3, this.zzk ? 1 : 0, (int) (j2 - j4), i2, null);
                    }
                }
            }
            this.zzi = this.zzf;
            this.zzj = this.zzg;
            this.zzk = false;
            this.zzh = true;
        }
        boolean z3 = this.zzl;
        boolean z4 = this.zzk;
        int i3 = this.zze;
        if (i3 == 5 || (z3 && i3 == 1)) {
            z2 = true;
        }
        boolean z5 = z4 | z2;
        this.zzk = z5;
        this.zze = 24;
        return z5;
    }
}

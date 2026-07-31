package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public class zzacm {
    protected final zzacg zza;
    protected final zzacl zzb;
    protected zzaci zzc;
    private final int zzd;

    protected zzacm(zzacj zzacjVar, zzacl zzaclVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.zzb = zzaclVar;
        this.zzd = i;
        this.zza = new zzacg(zzacjVar, j, 0L, j3, j4, j5, j6);
    }

    protected static final int zzf(zzadb zzadbVar, long j, zzaea zzaeaVar) {
        if (j == zzadbVar.zzn()) {
            return 0;
        }
        zzaeaVar.zza = j;
        return 1;
    }

    protected static final boolean zzg(zzadb zzadbVar, long j) throws IOException {
        long zzn = j - zzadbVar.zzn();
        if (zzn < 0 || zzn > 262144) {
            return false;
        }
        zzadbVar.zzf((int) zzn);
        return true;
    }

    public final zzaed zza() {
        return this.zza;
    }

    public final void zzb(long j) {
        zzaci zzaciVar = this.zzc;
        if (zzaciVar == null || zzaciVar.zze() != j) {
            zzacg zzacgVar = this.zza;
            this.zzc = new zzaci(j, zzacgVar.zzd(j), 0L, zzacgVar.zze(), zzacgVar.zzf(), zzacgVar.zzg(), zzacgVar.zzh());
        }
    }

    public final boolean zzc() {
        return this.zzc != null;
    }

    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        while (true) {
            zzaci zzaciVar = this.zzc;
            zzaciVar.getClass();
            long zzb = zzaciVar.zzb();
            long zzc = zzaciVar.zzc();
            long zzh = zzaciVar.zzh();
            if (zzc - zzb <= this.zzd) {
                zze(false, zzb);
                return zzf(zzadbVar, zzb, zzaeaVar);
            }
            if (!zzg(zzadbVar, zzh)) {
                return zzf(zzadbVar, zzh, zzaeaVar);
            }
            zzadbVar.zzl();
            zzack zza = this.zzb.zza(zzadbVar, zzaciVar.zzd());
            int zzd = zza.zzd();
            if (zzd == -3) {
                zze(false, zzh);
                return zzf(zzadbVar, zzh, zzaeaVar);
            }
            if (zzd == -2) {
                zzaciVar.zzf(zza.zze(), zza.zzf());
            } else {
                if (zzd != -1) {
                    zzg(zzadbVar, zza.zzf());
                    zze(true, zza.zzf());
                    return zzf(zzadbVar, zza.zzf(), zzaeaVar);
                }
                zzaciVar.zzg(zza.zze(), zza.zzf());
            }
        }
    }

    protected final void zze(boolean z, long j) {
        this.zzc = null;
        this.zzb.zzb();
    }
}

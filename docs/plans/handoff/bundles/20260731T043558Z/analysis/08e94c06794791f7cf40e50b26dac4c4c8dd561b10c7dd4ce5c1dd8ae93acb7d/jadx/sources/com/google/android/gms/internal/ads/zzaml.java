package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaml implements zzada {
    private final zzamm zza;
    private final zzeg zzb;
    private final zzeg zzc;
    private final zzef zzd;
    private zzadd zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        int i = zzamk.zza;
    }

    public zzaml() {
        throw null;
    }

    public zzaml(int i) {
        this.zza = new zzamm(true, null, 0, MimeTypes.AUDIO_AAC);
        this.zzb = new zzeg(2048);
        this.zzg = -1L;
        zzeg zzegVar = new zzeg(10);
        this.zzc = zzegVar;
        byte[] zzi = zzegVar.zzi();
        this.zzd = new zzef(zzi, zzi.length);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzeg zzegVar;
        zzacr zzacrVar;
        int i = 0;
        while (true) {
            zzegVar = this.zzc;
            zzacrVar = (zzacr) zzadbVar;
            zzacrVar.zzh(zzegVar.zzi(), 0, 10, false);
            zzegVar.zzh(0);
            if (zzegVar.zzx() != 4801587) {
                break;
            }
            zzegVar.zzk(3);
            int zzG = zzegVar.zzG();
            i += zzG + 10;
            zzacrVar.zzj(zzG, false);
        }
        zzadbVar.zzl();
        zzacrVar.zzj(i, false);
        if (this.zzg == -1) {
            this.zzg = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            zzacrVar.zzh(zzegVar.zzi(), 0, 2, false);
            zzegVar.zzh(0);
            if (zzamm.zzf(zzegVar.zzt())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                zzacrVar.zzh(zzegVar.zzi(), 0, 4, false);
                zzef zzefVar = this.zzd;
                zzefVar.zzf(14);
                int zzj = zzefVar.zzj(13);
                if (zzj <= 6) {
                    i4++;
                    zzadbVar.zzl();
                    zzacrVar.zzj(i4, false);
                } else {
                    zzacrVar.zzj(zzj - 6, false);
                    i3 += zzj;
                }
            } else {
                i4++;
                zzadbVar.zzl();
                zzacrVar.zzj(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zze = zzaddVar;
        this.zza.zzb(zzaddVar, new zzaoe(Integer.MIN_VALUE, 0, 1));
        zzaddVar.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        this.zze.getClass();
        zzeg zzegVar = this.zzb;
        int zza = zzadbVar.zza(zzegVar.zzi(), 0, 2048);
        if (!this.zzi) {
            this.zze.zzw(new zzaec(C.TIME_UNSET, 0L));
            this.zzi = true;
        }
        if (zza == -1) {
            return -1;
        }
        zzegVar.zzh(0);
        zzegVar.zzf(zza);
        if (!this.zzh) {
            this.zza.zzc(this.zzf, 4);
            this.zzh = true;
        }
        this.zza.zzd(zzegVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        this.zzh = false;
        this.zza.zza();
        this.zzf = j2;
    }
}

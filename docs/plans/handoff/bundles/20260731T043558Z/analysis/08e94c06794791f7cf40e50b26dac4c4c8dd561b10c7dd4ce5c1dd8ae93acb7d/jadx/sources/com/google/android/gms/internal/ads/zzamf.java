package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzamf implements zzada {
    private final zzamg zza = new zzamg(null, 0, MimeTypes.AUDIO_AC3);
    private final zzeg zzb = new zzeg(2786);
    private boolean zzc;

    static {
        int i = zzame.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzacr zzacrVar;
        zzeg zzegVar = new zzeg(10);
        int i = 0;
        while (true) {
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
        int i2 = 0;
        int i3 = i;
        while (true) {
            zzacrVar.zzh(zzegVar.zzi(), 0, 6, false);
            zzegVar.zzh(0);
            if (zzegVar.zzt() != 2935) {
                zzadbVar.zzl();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                zzacrVar.zzj(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int zzd = zzacb.zzd(zzegVar.zzi());
                if (zzd == -1) {
                    return false;
                }
                zzacrVar.zzj(zzd - 6, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zza.zzb(zzaddVar, new zzaoe(Integer.MIN_VALUE, 0, 1));
        zzaddVar.zzv();
        zzaddVar.zzw(new zzaec(C.TIME_UNSET, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        zzeg zzegVar = this.zzb;
        int zza = zzadbVar.zza(zzegVar.zzi(), 0, 2786);
        if (zza == -1) {
            return -1;
        }
        zzegVar.zzh(0);
        zzegVar.zzf(zza);
        if (!this.zzc) {
            this.zza.zzc(0L, 4);
            this.zzc = true;
        }
        this.zza.zzd(zzegVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        this.zzc = false;
        this.zza.zza();
    }
}

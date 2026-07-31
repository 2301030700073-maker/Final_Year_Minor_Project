package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzami implements zzada {
    private final zzamj zza = new zzamj(null, 0, MimeTypes.AUDIO_AC4);
    private final zzeg zzb = new zzeg(16384);
    private boolean zzc;

    static {
        int i = zzamh.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzacr zzacrVar;
        int i;
        zzeg zzegVar = new zzeg(10);
        int i2 = 0;
        while (true) {
            zzacrVar = (zzacr) zzadbVar;
            zzacrVar.zzh(zzegVar.zzi(), 0, 10, false);
            zzegVar.zzh(0);
            if (zzegVar.zzx() != 4801587) {
                break;
            }
            zzegVar.zzk(3);
            int zzG = zzegVar.zzG();
            i2 += zzG + 10;
            zzacrVar.zzj(zzG, false);
        }
        zzadbVar.zzl();
        zzacrVar.zzj(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            zzacrVar.zzh(zzegVar.zzi(), 0, 7, false);
            zzegVar.zzh(0);
            int zzt = zzegVar.zzt();
            if (zzt == 44096 || zzt == 44097) {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                byte[] zzi = zzegVar.zzi();
                int i6 = zzace.zza;
                if (zzi.length < 7) {
                    i = -1;
                } else {
                    int i7 = ((zzi[2] & 255) << 8) | (zzi[3] & 255);
                    if (i7 == 65535) {
                        i7 = ((zzi[4] & 255) << 16) | ((zzi[5] & 255) << 8) | (zzi[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (zzt == 44097) {
                        i5 += 2;
                    }
                    i = i7 + i5;
                }
                if (i == -1) {
                    return false;
                }
                zzacrVar.zzj(i - 7, false);
            } else {
                zzadbVar.zzl();
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                zzacrVar.zzj(i4, false);
                i3 = 0;
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
        int zza = zzadbVar.zza(zzegVar.zzi(), 0, 16384);
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

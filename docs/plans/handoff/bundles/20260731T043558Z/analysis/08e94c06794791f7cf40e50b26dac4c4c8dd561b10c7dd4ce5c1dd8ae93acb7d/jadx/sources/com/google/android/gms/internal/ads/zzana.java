package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzana implements zzamq {
    private zzaem zzc;
    private boolean zzd;
    private int zzf;
    private int zzg;
    private final String zza = MimeTypes.VIDEO_MP2T;
    private final zzeg zzb = new zzeg(10);
    private long zze = C.TIME_UNSET;

    public zzana(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zza() {
        this.zzd = false;
        this.zze = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzb(zzadd zzaddVar, zzaoe zzaoeVar) {
        zzaoeVar.zza();
        zzaem zzu = zzaddVar.zzu(zzaoeVar.zzb(), 5);
        this.zzc = zzu;
        zzt zztVar = new zzt();
        zztVar.zza(zzaoeVar.zzc());
        zztVar.zzl(this.zza);
        zztVar.zzm(MimeTypes.APPLICATION_ID3);
        zzu.zzu(zztVar.zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzc(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzd = true;
        this.zze = j;
        this.zzf = 0;
        this.zzg = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzd(zzeg zzegVar) {
        this.zzc.getClass();
        if (this.zzd) {
            int zzd = zzegVar.zzd();
            int i = this.zzg;
            if (i < 10) {
                int min = Math.min(zzd, 10 - i);
                byte[] zzi = zzegVar.zzi();
                int zzg = zzegVar.zzg();
                zzeg zzegVar2 = this.zzb;
                System.arraycopy(zzi, zzg, zzegVar2.zzi(), this.zzg, min);
                if (this.zzg + min == 10) {
                    zzegVar2.zzh(0);
                    if (zzegVar2.zzs() != 73 || zzegVar2.zzs() != 68 || zzegVar2.zzs() != 51) {
                        zzdt.zzc("Id3Reader", "Discarding invalid ID3 tag");
                        this.zzd = false;
                        return;
                    } else {
                        zzegVar2.zzk(3);
                        this.zzf = zzegVar2.zzG() + 10;
                    }
                }
            }
            int min2 = Math.min(zzd, this.zzf - this.zzg);
            this.zzc.zzz(zzegVar, min2);
            this.zzg += min2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
        int i;
        this.zzc.getClass();
        if (this.zzd && (i = this.zzf) != 0 && this.zzg == i) {
            zzgmd.zzh(this.zze != C.TIME_UNSET);
            this.zzc.zzx(this.zze, 1, this.zzf, 0, null);
            this.zzd = false;
        }
    }
}

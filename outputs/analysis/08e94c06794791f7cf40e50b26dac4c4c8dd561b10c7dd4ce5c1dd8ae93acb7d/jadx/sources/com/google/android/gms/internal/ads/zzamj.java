package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.common.primitives.SignedBytes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzamj implements zzamq {
    private final zzef zza;
    private final zzeg zzb;
    private final String zzc;
    private final int zzd;
    private final String zze;
    private String zzf;
    private zzaem zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;
    private long zzk;
    private zzv zzl;
    private int zzm;
    private long zzn;

    public zzamj(String str, int i, String str2) {
        zzef zzefVar = new zzef(new byte[16], 16);
        this.zza = zzefVar;
        this.zzb = new zzeg(zzefVar.zza);
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
        this.zzn = C.TIME_UNSET;
        this.zzc = str;
        this.zzd = i;
        this.zze = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zza() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
        this.zzn = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzb(zzadd zzaddVar, zzaoe zzaoeVar) {
        zzaoeVar.zza();
        this.zzf = zzaoeVar.zzc();
        this.zzg = zzaddVar.zzu(zzaoeVar.zzb(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzc(long j, int i) {
        this.zzn = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzd(zzeg zzegVar) {
        this.zzg.getClass();
        while (zzegVar.zzd() > 0) {
            int i = this.zzh;
            if (i == 0) {
                while (zzegVar.zzd() > 0) {
                    if (this.zzj) {
                        int zzs = zzegVar.zzs();
                        this.zzj = zzs == 172;
                        byte b = SignedBytes.MAX_POWER_OF_TWO;
                        if (zzs != 64) {
                            if (zzs == 65) {
                                zzs = 65;
                            }
                        }
                        this.zzh = 1;
                        zzeg zzegVar2 = this.zzb;
                        zzegVar2.zzi()[0] = -84;
                        if (zzs == 65) {
                            b = 65;
                        }
                        zzegVar2.zzi()[1] = b;
                        this.zzi = 2;
                    } else {
                        this.zzj = zzegVar.zzs() == 172;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzegVar.zzd(), this.zzm - this.zzi);
                this.zzg.zzz(zzegVar, min);
                int i2 = this.zzi + min;
                this.zzi = i2;
                if (i2 == this.zzm) {
                    zzgmd.zzh(this.zzn != C.TIME_UNSET);
                    this.zzg.zzx(this.zzn, 1, this.zzm, 0, null);
                    this.zzn += this.zzk;
                    this.zzh = 0;
                }
            } else {
                zzeg zzegVar3 = this.zzb;
                byte[] zzi = zzegVar3.zzi();
                int min2 = Math.min(zzegVar.zzd(), 16 - this.zzi);
                zzegVar.zzm(zzi, this.zzi, min2);
                int i3 = this.zzi + min2;
                this.zzi = i3;
                if (i3 == 16) {
                    zzef zzefVar = this.zza;
                    zzefVar.zzf(0);
                    zzacd zzb = zzace.zzb(zzefVar);
                    zzv zzvVar = this.zzl;
                    if (zzvVar == null || zzvVar.zzG != 2 || zzb.zza != zzvVar.zzH || !MimeTypes.AUDIO_AC4.equals(zzvVar.zzo)) {
                        zzt zztVar = new zzt();
                        zztVar.zza(this.zzf);
                        zztVar.zzl(this.zze);
                        zztVar.zzm(MimeTypes.AUDIO_AC4);
                        zztVar.zzE(2);
                        zztVar.zzF(zzb.zza);
                        zztVar.zze(this.zzc);
                        zztVar.zzg(this.zzd);
                        zzv zzM = zztVar.zzM();
                        this.zzl = zzM;
                        this.zzg.zzu(zzM);
                    }
                    this.zzm = zzb.zzb;
                    this.zzk = (zzb.zzc * 1000000) / this.zzl.zzH;
                    zzegVar3.zzh(0);
                    this.zzg.zzz(zzegVar3, 16);
                    this.zzh = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
    }
}

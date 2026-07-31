package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.common.base.Ascii;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzamg implements zzamq {
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

    public zzamg(String str, int i, String str2) {
        zzef zzefVar = new zzef(new byte[128], 128);
        this.zza = zzefVar;
        this.zzb = new zzeg(zzefVar.zza);
        this.zzh = 0;
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
                while (true) {
                    if (zzegVar.zzd() <= 0) {
                        break;
                    }
                    if (this.zzj) {
                        int zzs = zzegVar.zzs();
                        if (zzs == 119) {
                            this.zzj = false;
                            this.zzh = 1;
                            zzeg zzegVar2 = this.zzb;
                            zzegVar2.zzi()[0] = Ascii.VT;
                            zzegVar2.zzi()[1] = 119;
                            this.zzi = 2;
                            break;
                        }
                        this.zzj = zzs == 11;
                    } else {
                        this.zzj = zzegVar.zzs() == 11;
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
                int min2 = Math.min(zzegVar.zzd(), 128 - this.zzi);
                zzegVar.zzm(zzi, this.zzi, min2);
                int i3 = this.zzi + min2;
                this.zzi = i3;
                if (i3 == 128) {
                    zzef zzefVar = this.zza;
                    zzefVar.zzf(0);
                    zzaca zzc = zzacb.zzc(zzefVar);
                    zzv zzvVar = this.zzl;
                    if (zzvVar == null || zzc.zzc != zzvVar.zzG || zzc.zzb != zzvVar.zzH || !Objects.equals(zzc.zza, zzvVar.zzo)) {
                        zzt zztVar = new zzt();
                        zztVar.zza(this.zzf);
                        zztVar.zzl(this.zze);
                        String str = zzc.zza;
                        zztVar.zzm(str);
                        zztVar.zzE(zzc.zzc);
                        zztVar.zzF(zzc.zzb);
                        zztVar.zze(this.zzc);
                        zztVar.zzg(this.zzd);
                        int i4 = zzc.zzf;
                        zztVar.zzi(i4);
                        if (MimeTypes.AUDIO_AC3.equals(str)) {
                            zztVar.zzh(i4);
                        }
                        zzv zzM = zztVar.zzM();
                        this.zzl = zzM;
                        this.zzg.zzu(zzM);
                    }
                    this.zzm = zzc.zzd;
                    this.zzk = (zzc.zze * 1000000) / this.zzl.zzH;
                    zzegVar3.zzh(0);
                    this.zzg.zzz(zzegVar3, 128);
                    this.zzh = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
    }
}

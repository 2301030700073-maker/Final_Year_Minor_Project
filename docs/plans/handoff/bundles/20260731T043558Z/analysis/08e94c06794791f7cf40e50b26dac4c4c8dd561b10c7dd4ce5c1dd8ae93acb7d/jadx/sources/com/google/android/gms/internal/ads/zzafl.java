package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzafl implements zzada {
    private final byte[] zza;
    private final zzeg zzb;
    private final zzadh zzc;
    private zzadd zzd;
    private zzaem zze;
    private int zzf;
    private zzap zzg;
    private zzadn zzh;
    private int zzi;
    private int zzj;
    private zzafj zzk;
    private int zzl;
    private long zzm;

    static {
        int i = zzafk.zza;
    }

    public zzafl() {
        throw null;
    }

    public zzafl(int i) {
        this.zza = new byte[42];
        this.zzb = new zzeg(new byte[32768], 0);
        this.zzc = new zzadh();
        this.zzf = 0;
    }

    private final long zzg(zzeg zzegVar, boolean z) {
        boolean z2;
        this.zzh.getClass();
        int zzg = zzegVar.zzg();
        while (zzg <= zzegVar.zze() - 16) {
            zzegVar.zzh(zzg);
            zzadn zzadnVar = this.zzh;
            int i = this.zzj;
            zzadh zzadhVar = this.zzc;
            if (zzadi.zza(zzegVar, zzadnVar, i, zzadhVar)) {
                zzegVar.zzh(zzg);
                return zzadhVar.zza;
            }
            zzg++;
        }
        if (!z) {
            zzegVar.zzh(zzg);
            return -1L;
        }
        while (zzg <= zzegVar.zze() - this.zzi) {
            zzegVar.zzh(zzg);
            try {
                z2 = zzadi.zza(zzegVar, this.zzh, this.zzj, this.zzc);
            } catch (IndexOutOfBoundsException unused) {
                z2 = false;
            }
            if (zzegVar.zzg() <= zzegVar.zze() && z2) {
                zzegVar.zzh(zzg);
                return this.zzc.zza;
            }
            zzg++;
        }
        zzegVar.zzh(zzegVar.zze());
        return -1L;
    }

    private final void zzh() {
        long j = this.zzm * 1000000;
        zzadn zzadnVar = this.zzh;
        String str = zzep.zza;
        this.zze.zzx(j / zzadnVar.zze, 1, this.zzl, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzadk.zza(zzadbVar, false);
        zzeg zzegVar = new zzeg(4);
        ((zzacr) zzadbVar).zzh(zzegVar.zzi(), 0, 4, false);
        return zzegVar.zzz() == 1716281667;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zzd = zzaddVar;
        this.zze = zzaddVar.zzu(0, 1);
        zzaddVar.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        if (j == 0) {
            this.zzf = 0;
        } else {
            zzafj zzafjVar = this.zzk;
            if (zzafjVar != null) {
                zzafjVar.zzb(j2);
            }
        }
        this.zzm = j2 != 0 ? -1L : 0L;
        this.zzl = 0;
        this.zzb.zza(0);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        boolean zzb;
        zzadn zzadnVar;
        zzaed zzaecVar;
        boolean z;
        int i = this.zzf;
        if (i == 0) {
            zzadbVar.zzl();
            long zzm = zzadbVar.zzm();
            zzap zza = zzadk.zza(zzadbVar, true);
            zzadbVar.zzf((int) (zzadbVar.zzm() - zzm));
            this.zzg = zza;
            this.zzf = 1;
            return 0;
        }
        if (i == 1) {
            zzadbVar.zzi(this.zza, 0, 42);
            zzadbVar.zzl();
            this.zzf = 2;
            return 0;
        }
        if (i == 2) {
            zzeg zzegVar = new zzeg(4);
            zzadbVar.zzc(zzegVar.zzi(), 0, 4);
            if (zzegVar.zzz() != 1716281667) {
                throw zzat.zzb("Failed to read FLAC stream marker.", null);
            }
            this.zzf = 3;
            return 0;
        }
        if (i == 3) {
            zzadj zzadjVar = new zzadj(this.zzh);
            do {
                zzb = zzadk.zzb(zzadbVar, zzadjVar);
                zzadnVar = zzadjVar.zza;
                String str = zzep.zza;
                this.zzh = zzadnVar;
            } while (!zzb);
            zzadnVar.getClass();
            this.zzi = Math.max(zzadnVar.zzc, 6);
            zzv zzc = this.zzh.zzc(this.zza, this.zzg);
            zzaem zzaemVar = this.zze;
            zzt zza2 = zzc.zza();
            zza2.zzl(MimeTypes.AUDIO_FLAC);
            zzaemVar.zzu(zza2.zzM());
            zzaem zzaemVar2 = this.zze;
            this.zzh.zza();
            this.zzf = 4;
            return 0;
        }
        if (i == 4) {
            zzadbVar.zzl();
            zzeg zzegVar2 = new zzeg(2);
            zzadbVar.zzi(zzegVar2.zzi(), 0, 2);
            int zzt = zzegVar2.zzt();
            if ((zzt >> 2) != 16382) {
                zzadbVar.zzl();
                throw zzat.zzb("First frame does not start with sync code.", null);
            }
            zzadbVar.zzl();
            this.zzj = zzt;
            zzadd zzaddVar = this.zzd;
            String str2 = zzep.zza;
            long zzn = zzadbVar.zzn();
            long zzo = zzadbVar.zzo();
            zzadn zzadnVar2 = this.zzh;
            zzadnVar2.getClass();
            zzadm zzadmVar = zzadnVar2.zzk;
            if (zzadmVar != null && zzadmVar.zza.length > 0) {
                zzaecVar = new zzadl(zzadnVar2, zzn);
            } else if (zzo == -1 || zzadnVar2.zzj <= 0) {
                zzaecVar = new zzaec(zzadnVar2.zza(), 0L);
            } else {
                zzafj zzafjVar = new zzafj(zzadnVar2, this.zzj, zzn, zzo);
                this.zzk = zzafjVar;
                zzaecVar = zzafjVar.zza();
            }
            zzaddVar.zzw(zzaecVar);
            this.zzf = 5;
            return 0;
        }
        this.zze.getClass();
        zzadn zzadnVar3 = this.zzh;
        zzadnVar3.getClass();
        zzafj zzafjVar2 = this.zzk;
        if (zzafjVar2 != null && zzafjVar2.zzc()) {
            return zzafjVar2.zzd(zzadbVar, zzaeaVar);
        }
        if (this.zzm == -1) {
            this.zzm = zzadi.zzb(zzadbVar, zzadnVar3);
            return 0;
        }
        zzeg zzegVar3 = this.zzb;
        int zze = zzegVar3.zze();
        if (zze < 32768) {
            int zza3 = zzadbVar.zza(zzegVar3.zzi(), zze, 32768 - zze);
            z = zza3 == -1;
            if (!z) {
                zzegVar3.zzf(zze + zza3);
            } else if (zzegVar3.zzd() == 0) {
                zzh();
                return -1;
            }
        } else {
            z = false;
        }
        int zzg = zzegVar3.zzg();
        int i2 = this.zzl;
        int i3 = this.zzi;
        if (i2 < i3) {
            zzegVar3.zzk(Math.min(i3 - i2, zzegVar3.zzd()));
        }
        long zzg2 = zzg(zzegVar3, z);
        int zzg3 = zzegVar3.zzg() - zzg;
        zzegVar3.zzh(zzg);
        this.zze.zzz(zzegVar3, zzg3);
        this.zzl += zzg3;
        if (zzg2 != -1) {
            zzh();
            this.zzl = 0;
            this.zzm = zzg2;
        }
        int length = zzegVar3.zzi().length - zzegVar3.zze();
        if (zzegVar3.zzd() >= 16 || length >= 16) {
            return 0;
        }
        int zzd = zzegVar3.zzd();
        System.arraycopy(zzegVar3.zzi(), zzegVar3.zzg(), zzegVar3.zzi(), 0, zzd);
        zzegVar3.zzh(0);
        zzegVar3.zzf(zzd);
        return 0;
    }
}

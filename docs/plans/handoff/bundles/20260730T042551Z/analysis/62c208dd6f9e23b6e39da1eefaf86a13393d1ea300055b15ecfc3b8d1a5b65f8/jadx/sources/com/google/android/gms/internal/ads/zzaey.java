package com.google.android.gms.internal.ads;

import defpackage.V1;

/* loaded from: classes.dex */
final class zzaey extends zzaex {
    private final zzdy zzb;
    private final zzdy zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    public zzaey(zzadt zzadtVar) {
        super(zzadtVar);
        this.zzb = new zzdy(zzfk.zza);
        this.zzc = new zzdy(4);
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    public final boolean zza(zzdy zzdyVar) {
        int zzm = zzdyVar.zzm();
        int i = zzm >> 4;
        int i2 = zzm & 15;
        if (i2 != 7) {
            throw new zzaew(V1.m2494case("Video format not supported: ", i2));
        }
        this.zzg = i;
        return i != 5;
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    public final boolean zzb(zzdy zzdyVar, long j) {
        int i;
        int zzm = zzdyVar.zzm();
        long zzh = zzdyVar.zzh();
        if (zzm == 0) {
            if (!this.zze) {
                zzdy zzdyVar2 = new zzdy(new byte[zzdyVar.zzb()]);
                zzdyVar.zzH(zzdyVar2.zzN(), 0, zzdyVar.zzb());
                zzabr zza = zzabr.zza(zzdyVar2);
                this.zzd = zza.zzb;
                zzz zzzVar = new zzz();
                zzzVar.zzaa("video/avc");
                zzzVar.zzA(zza.zzl);
                zzzVar.zzaf(zza.zzc);
                zzzVar.zzK(zza.zzd);
                zzzVar.zzW(zza.zzk);
                zzzVar.zzN(zza.zza);
                this.zza.zzm(zzzVar.zzag());
                this.zze = true;
                return false;
            }
        } else if (zzm == 1 && this.zze) {
            int i2 = this.zzg == 1 ? 1 : 0;
            if (this.zzf) {
                i = i2;
            } else if (i2 != 0) {
                i = 1;
            }
            byte[] zzN = this.zzc.zzN();
            zzN[0] = 0;
            zzN[1] = 0;
            zzN[2] = 0;
            int i3 = 4 - this.zzd;
            int i4 = 0;
            while (zzdyVar.zzb() > 0) {
                zzdyVar.zzH(this.zzc.zzN(), i3, this.zzd);
                this.zzc.zzL(0);
                zzdy zzdyVar3 = this.zzc;
                zzdy zzdyVar4 = this.zzb;
                int zzp = zzdyVar3.zzp();
                zzdyVar4.zzL(0);
                this.zza.zzr(this.zzb, 4);
                this.zza.zzr(zzdyVar, zzp);
                i4 = i4 + 4 + zzp;
            }
            this.zza.zzt((zzh * 1000) + j, i, i4, 0, null);
            this.zzf = true;
            return true;
        }
        return false;
    }
}

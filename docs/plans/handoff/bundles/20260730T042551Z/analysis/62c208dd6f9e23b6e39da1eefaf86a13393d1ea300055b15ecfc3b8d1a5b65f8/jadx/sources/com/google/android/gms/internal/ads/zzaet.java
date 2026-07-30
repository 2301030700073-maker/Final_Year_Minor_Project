package com.google.android.gms.internal.ads;

import defpackage.V1;
import java.util.Collections;

/* loaded from: classes.dex */
final class zzaet extends zzaex {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzaet(zzadt zzadtVar) {
        super(zzadtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    public final boolean zza(zzdy zzdyVar) {
        if (this.zzc) {
            zzdyVar.zzM(1);
        } else {
            int zzm = zzdyVar.zzm();
            int i = zzm >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(zzm >> 2) & 3];
                zzz zzzVar = new zzz();
                zzzVar.zzaa("audio/mpeg");
                zzzVar.zzz(1);
                zzzVar.zzab(i2);
                this.zza.zzm(zzzVar.zzag());
                this.zzd = true;
            } else if (i == 7 || i == 8) {
                zzz zzzVar2 = new zzz();
                zzzVar2.zzaa(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                zzzVar2.zzz(1);
                zzzVar2.zzab(8000);
                this.zza.zzm(zzzVar2.zzag());
                this.zzd = true;
            } else if (i != 10) {
                throw new zzaew(V1.m2494case("Audio format not supported: ", i));
            }
            this.zzc = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaex
    public final boolean zzb(zzdy zzdyVar, long j) {
        if (this.zze == 2) {
            int zzb2 = zzdyVar.zzb();
            this.zza.zzr(zzdyVar, zzb2);
            this.zza.zzt(j, 1, zzb2, 0, null);
            return true;
        }
        int zzm = zzdyVar.zzm();
        if (zzm != 0 || this.zzd) {
            if (this.zze == 10 && zzm != 1) {
                return false;
            }
            int zzb3 = zzdyVar.zzb();
            this.zza.zzr(zzdyVar, zzb3);
            this.zza.zzt(j, 1, zzb3, 0, null);
            return true;
        }
        int zzb4 = zzdyVar.zzb();
        byte[] bArr = new byte[zzb4];
        zzdyVar.zzH(bArr, 0, zzb4);
        zzabi zza = zzabk.zza(bArr);
        zzz zzzVar = new zzz();
        zzzVar.zzaa("audio/mp4a-latm");
        zzzVar.zzA(zza.zzc);
        zzzVar.zzz(zza.zzb);
        zzzVar.zzab(zza.zza);
        zzzVar.zzN(Collections.singletonList(bArr));
        this.zza.zzm(zzzVar.zzag());
        this.zzd = true;
        return false;
    }
}

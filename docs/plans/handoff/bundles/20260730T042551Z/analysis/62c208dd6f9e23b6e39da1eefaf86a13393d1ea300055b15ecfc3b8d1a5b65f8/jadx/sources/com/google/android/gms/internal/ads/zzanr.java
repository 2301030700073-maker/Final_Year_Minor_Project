package com.google.android.gms.internal.ads;

import android.util.SparseArray;

/* loaded from: classes.dex */
final class zzanr implements zzank {
    final /* synthetic */ zzant zza;
    private final zzdx zzb = new zzdx(new byte[4], 4);

    public zzanr(zzant zzantVar) {
        this.zza = zzantVar;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzdy zzdyVar) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (zzdyVar.zzm() == 0 && (zzdyVar.zzm() & 128) != 0) {
            zzdyVar.zzM(6);
            int zzb = zzdyVar.zzb() / 4;
            for (int i2 = 0; i2 < zzb; i2++) {
                zzdyVar.zzG(this.zzb, 4);
                zzdx zzdxVar = this.zzb;
                int zzd = zzdxVar.zzd(16);
                zzdxVar.zzn(3);
                if (zzd == 0) {
                    this.zzb.zzn(13);
                } else {
                    int zzd2 = this.zzb.zzd(13);
                    sparseArray2 = this.zza.zzg;
                    if (sparseArray2.get(zzd2) == null) {
                        zzant zzantVar = this.zza;
                        sparseArray3 = zzantVar.zzg;
                        sparseArray3.put(zzd2, new zzanl(new zzans(zzantVar, zzd2)));
                        zzant zzantVar2 = this.zza;
                        i = zzantVar2.zzm;
                        zzantVar2.zzm = i + 1;
                    }
                }
            }
            sparseArray = this.zza.zzg;
            sparseArray.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzef zzefVar, zzacq zzacqVar, zzanx zzanxVar) {
    }
}

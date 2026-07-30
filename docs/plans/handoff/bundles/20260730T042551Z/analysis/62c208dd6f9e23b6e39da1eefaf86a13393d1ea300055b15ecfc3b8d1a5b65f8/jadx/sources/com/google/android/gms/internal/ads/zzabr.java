package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzabr {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final float zzk;
    public final String zzl;

    private zzabr(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = i8;
        this.zzj = i9;
        this.zzk = f;
        this.zzl = str;
    }

    public static zzabr zza(zzdy zzdyVar) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        float f;
        try {
            zzdyVar.zzM(4);
            int zzm = (zzdyVar.zzm() & 3) + 1;
            if (zzm == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzm2 = zzdyVar.zzm() & 31;
            for (int i9 = 0; i9 < zzm2; i9++) {
                arrayList.add(zzb(zzdyVar));
            }
            int zzm3 = zzdyVar.zzm();
            for (int i10 = 0; i10 < zzm3; i10++) {
                arrayList.add(zzb(zzdyVar));
            }
            if (zzm2 > 0) {
                zzfj zzf = zzfk.zzf((byte[]) arrayList.get(0), zzm + 1, ((byte[]) arrayList.get(0)).length);
                int i11 = zzf.zze;
                int i12 = zzf.zzf;
                int i13 = zzf.zzh + 8;
                int i14 = zzf.zzi + 8;
                int i15 = zzf.zzj;
                int i16 = zzf.zzk;
                int i17 = zzf.zzl;
                int i18 = zzf.zzm;
                float f2 = zzf.zzg;
                str = zzcy.zzc(zzf.zza, zzf.zzb, zzf.zzc);
                i7 = i17;
                i8 = i18;
                f = f2;
                i4 = i14;
                i5 = i15;
                i6 = i16;
                i = i11;
                i2 = i12;
                i3 = i13;
            } else {
                str = null;
                i = -1;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = -1;
                i7 = -1;
                i8 = 16;
                f = 1.0f;
            }
            return new zzabr(arrayList, zzm, i, i2, i3, i4, i5, i6, i7, i8, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbc.zza("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzdy zzdyVar) {
        int zzq = zzdyVar.zzq();
        int zzd = zzdyVar.zzd();
        zzdyVar.zzM(zzq);
        return zzcy.zze(zzdyVar.zzN(), zzd, zzq);
    }
}

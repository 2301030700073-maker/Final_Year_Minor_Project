package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzamh implements zzamj {
    private final zzdy zza;
    private final String zzc;
    private final int zzd;
    private String zze;
    private zzadt zzf;
    private int zzh;
    private int zzi;
    private long zzj;
    private zzab zzk;
    private int zzl;
    private int zzm;
    private int zzg = 0;
    private long zzp = -9223372036854775807L;
    private final AtomicInteger zzb = new AtomicInteger();
    private int zzn = -1;
    private int zzo = -1;

    public zzamh(String str, int i, int i2) {
        this.zza = new zzdy(new byte[i2]);
        this.zzc = str;
        this.zzd = i;
    }

    private final void zzf(zzack zzackVar) {
        int i;
        int i2 = zzackVar.zzb;
        if (i2 == -2147483647 || (i = zzackVar.zzc) == -1) {
            return;
        }
        zzab zzabVar = this.zzk;
        if (zzabVar != null && i == zzabVar.zzD && i2 == zzabVar.zzE && Objects.equals(zzackVar.zza, zzabVar.zzo)) {
            return;
        }
        zzab zzabVar2 = this.zzk;
        zzz zzzVar = zzabVar2 == null ? new zzz() : zzabVar2.zzb();
        zzzVar.zzM(this.zze);
        zzzVar.zzaa(zzackVar.zza);
        zzzVar.zzz(zzackVar.zzc);
        zzzVar.zzab(zzackVar.zzb);
        zzzVar.zzQ(this.zzc);
        zzzVar.zzY(this.zzd);
        zzab zzag = zzzVar.zzag();
        this.zzk = zzag;
        this.zzf.zzm(zzag);
    }

    private final boolean zzg(zzdy zzdyVar, byte[] bArr, int i) {
        int min = Math.min(zzdyVar.zzb(), i - this.zzh);
        zzdyVar.zzH(bArr, this.zzh, min);
        int i2 = this.zzh + min;
        this.zzh = i2;
        return i2 == i;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d9  */
    @Override // com.google.android.gms.internal.ads.zzamj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzdy r17) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamh.zza(com.google.android.gms.internal.ads.zzdy):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzb(zzacq zzacqVar, zzanx zzanxVar) {
        zzanxVar.zzc();
        this.zze = zzanxVar.zzb();
        this.zzf = zzacqVar.zzw(zzanxVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zzd(long j, int i) {
        this.zzp = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamj
    public final void zze() {
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = 0;
        this.zzp = -9223372036854775807L;
        this.zzb.set(0);
    }
}

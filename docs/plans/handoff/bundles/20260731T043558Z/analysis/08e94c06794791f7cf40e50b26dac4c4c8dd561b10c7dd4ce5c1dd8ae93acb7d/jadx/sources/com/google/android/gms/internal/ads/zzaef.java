package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaef implements zzada {
    private final int zza;
    private final int zzb;
    private final String zzc;
    private int zzd;
    private int zze;
    private zzadd zzf;
    private zzaem zzg;

    public zzaef(int i, int i2, String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        int i = this.zza;
        zzgmd.zzh((i == -1 || this.zzb == -1) ? false : true);
        int i2 = this.zzb;
        zzeg zzegVar = new zzeg(i2);
        ((zzacr) zzadbVar).zzh(zzegVar.zzi(), 0, i2, false);
        return zzegVar.zzt() == i;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zzf = zzaddVar;
        zzaem zzu = zzaddVar.zzu(1024, 4);
        this.zzg = zzu;
        zzt zztVar = new zzt();
        String str = this.zzc;
        zztVar.zzl(str);
        zztVar.zzm(str);
        zzu.zzu(zztVar.zzM());
        this.zzf.zzv();
        this.zzf.zzw(new zzaeg(C.TIME_UNSET));
        this.zze = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final int zzd(zzadb zzadbVar, zzaea zzaeaVar) throws IOException {
        int i = this.zze;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        zzaem zzaemVar = this.zzg;
        zzaemVar.getClass();
        int zzy = zzaemVar.zzy(zzadbVar, 1024, true);
        if (zzy == -1) {
            this.zze = 2;
            this.zzg.zzx(0L, 1, this.zzd, 0, null);
            this.zzd = 0;
        } else {
            this.zzd += zzy;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        if (j == 0 || this.zze == 1) {
            this.zze = 1;
            this.zzd = 0;
        }
    }
}

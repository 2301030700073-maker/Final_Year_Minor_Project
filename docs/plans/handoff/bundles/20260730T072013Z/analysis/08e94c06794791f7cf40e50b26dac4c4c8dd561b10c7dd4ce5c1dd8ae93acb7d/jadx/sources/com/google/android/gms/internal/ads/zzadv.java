package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzadv implements zzaed {
    private final zzdu zza;
    private final zzdu zzb;
    private long zzc;

    public zzadv(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzgmd.zza(length == length2);
        if (length2 <= 0 || jArr2[0] <= 0) {
            this.zza = new zzdu(length2);
            this.zzb = new zzdu(length2);
        } else {
            int i = length2 + 1;
            zzdu zzduVar = new zzdu(i);
            this.zza = zzduVar;
            zzdu zzduVar2 = new zzdu(i);
            this.zzb = zzduVar2;
            zzduVar.zza(0L);
            zzduVar2.zza(0L);
        }
        this.zza.zzb(jArr);
        this.zzb.zzb(jArr2);
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final boolean zzb() {
        return this.zzb.zzd() > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaed
    public final zzaeb zzc(long j) {
        zzdu zzduVar = this.zzb;
        if (zzduVar.zzd() == 0) {
            zzaee zzaeeVar = zzaee.zza;
            return new zzaeb(zzaeeVar, zzaeeVar);
        }
        int zzn = zzep.zzn(zzduVar, j, true, true);
        long zzc = zzduVar.zzc(zzn);
        zzdu zzduVar2 = this.zza;
        zzaee zzaeeVar2 = new zzaee(zzc, zzduVar2.zzc(zzn));
        if (zzaeeVar2.zzb == j || zzn == zzduVar.zzd() - 1) {
            return new zzaeb(zzaeeVar2, zzaeeVar2);
        }
        int i = zzn + 1;
        return new zzaeb(zzaeeVar2, new zzaee(zzduVar.zzc(i), zzduVar2.zzc(i)));
    }
}

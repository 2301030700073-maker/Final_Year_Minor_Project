package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfn implements Comparable {
    private long zzc;
    private long zzb = -9223372036854775807L;
    private final zzdy zza = new zzdy();

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzfn zzfnVar = (zzfn) obj;
        int compare = Long.compare(this.zzb, zzfnVar.zzb);
        return compare != 0 ? compare : Long.compare(this.zzc, zzfnVar.zzc);
    }

    public final void zzc(long j, long j2, zzdy zzdyVar) {
        zzcw.zzf(j != -9223372036854775807L);
        this.zzb = j;
        this.zzc = j2;
        this.zza.zzI(zzdyVar.zzb());
        System.arraycopy(zzdyVar.zzN(), zzdyVar.zzd(), this.zza.zzN(), 0, zzdyVar.zzb());
    }
}

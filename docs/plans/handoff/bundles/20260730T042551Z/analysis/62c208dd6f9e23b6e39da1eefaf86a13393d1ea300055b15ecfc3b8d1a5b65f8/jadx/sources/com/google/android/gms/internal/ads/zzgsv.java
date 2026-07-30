package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgsv extends zzgxr implements zzgzd {
    private static final zzgsv zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgsl zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgsv zzgsvVar = new zzgsv();
        zza = zzgsvVar;
        zzgxr.zzbZ(zzgsv.class, zzgsvVar);
    }

    private zzgsv() {
    }

    public static zzgsu zzc() {
        return (zzgsu) zza.zzaZ();
    }

    public static /* synthetic */ void zzg(zzgsv zzgsvVar, zzgsl zzgslVar) {
        zzgslVar.getClass();
        zzgsvVar.zzd = zzgslVar;
        zzgsvVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzgsl zzb() {
        zzgsl zzgslVar = this.zzd;
        return zzgslVar == null ? zzgsl.zzd() : zzgslVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzgsv();
        }
        zzgsw zzgswVar = null;
        if (ordinal == 4) {
            return new zzgsu(zzgswVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgsv.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgtp zzf() {
        zzgtp zzb2 = zzgtp.zzb(this.zzg);
        return zzb2 == null ? zzgtp.UNRECOGNIZED : zzb2;
    }

    public final boolean zzj() {
        return (this.zzc & 1) != 0;
    }

    public final int zzk() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}

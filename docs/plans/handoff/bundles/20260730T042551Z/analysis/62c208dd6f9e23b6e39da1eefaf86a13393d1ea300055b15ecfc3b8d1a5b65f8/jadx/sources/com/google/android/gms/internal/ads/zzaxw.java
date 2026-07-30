package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaxw extends zzgxr implements zzgzd {
    private static final zzaxw zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzaxz zzd;
    private zzgwj zze;
    private zzgwj zzf;

    static {
        zzaxw zzaxwVar = new zzaxw();
        zza = zzaxwVar;
        zzgxr.zzbZ(zzaxw.class, zzaxwVar);
    }

    private zzaxw() {
        zzgwj zzgwjVar = zzgwj.zzb;
        this.zze = zzgwjVar;
        this.zzf = zzgwjVar;
    }

    public static zzaxw zzb(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzaxw) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public final zzaxz zzc() {
        zzaxz zzaxzVar = this.zzd;
        return zzaxzVar == null ? zzaxz.zzg() : zzaxzVar;
    }

    public final zzgwj zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzaxw();
        }
        zzaxv zzaxvVar = null;
        if (ordinal == 4) {
            return new zzaxu(zzaxvVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzaxw.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgwj zzf() {
        return this.zze;
    }
}

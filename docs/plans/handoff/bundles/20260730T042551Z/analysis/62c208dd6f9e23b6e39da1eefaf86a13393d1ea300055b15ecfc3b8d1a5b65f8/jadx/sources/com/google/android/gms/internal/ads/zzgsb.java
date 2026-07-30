package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgsb extends zzgxr implements zzgzd {
    private static final zzgsb zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgsh zze;
    private zzgwj zzf = zzgwj.zzb;

    static {
        zzgsb zzgsbVar = new zzgsb();
        zza = zzgsbVar;
        zzgxr.zzbZ(zzgsb.class, zzgsbVar);
    }

    private zzgsb() {
    }

    public static zzgrz zzb() {
        return (zzgrz) zza.zzaZ();
    }

    public static zzgsb zzd() {
        return zza;
    }

    public static zzgsb zzf(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgsb) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzi() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzk(zzgsb zzgsbVar, zzgsh zzgshVar) {
        zzgshVar.getClass();
        zzgsbVar.zze = zzgshVar;
        zzgsbVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzgsb();
        }
        zzgsa zzgsaVar = null;
        if (ordinal == 4) {
            return new zzgrz(zzgsaVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgsb.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgsh zzg() {
        zzgsh zzgshVar = this.zze;
        return zzgshVar == null ? zzgsh.zzf() : zzgshVar;
    }

    public final zzgwj zzh() {
        return this.zzf;
    }
}

package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgse extends zzgxr implements zzgzd {
    private static final zzgse zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgsh zzd;
    private int zze;
    private int zzf;

    static {
        zzgse zzgseVar = new zzgse();
        zza = zzgseVar;
        zzgxr.zzbZ(zzgse.class, zzgseVar);
    }

    private zzgse() {
    }

    public static zzgsc zzc() {
        return (zzgsc) zza.zzaZ();
    }

    public static zzgse zzf() {
        return zza;
    }

    public static zzgse zzg(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgse) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static /* synthetic */ void zzj(zzgse zzgseVar, zzgsh zzgshVar) {
        zzgshVar.getClass();
        zzgseVar.zzd = zzgshVar;
        zzgseVar.zzc |= 1;
    }

    public final int zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzgse();
        }
        zzgsd zzgsdVar = null;
        if (ordinal == 4) {
            return new zzgsc(zzgsdVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgse.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgsh zzh() {
        zzgsh zzgshVar = this.zzd;
        return zzgshVar == null ? zzgsh.zzf() : zzgshVar;
    }
}

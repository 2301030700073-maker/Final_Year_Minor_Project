package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgrc extends zzgxr implements zzgzd {
    private static final zzgrc zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgrf zzd;
    private int zze;

    static {
        zzgrc zzgrcVar = new zzgrc();
        zza = zzgrcVar;
        zzgxr.zzbZ(zzgrc.class, zzgrcVar);
    }

    private zzgrc() {
    }

    public static zzgra zzb() {
        return (zzgra) zza.zzaZ();
    }

    public static zzgrc zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgrc) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static /* synthetic */ void zzh(zzgrc zzgrcVar, zzgrf zzgrfVar) {
        zzgrfVar.getClass();
        zzgrcVar.zzd = zzgrfVar;
        zzgrcVar.zzc |= 1;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzgrc();
        }
        zzgrb zzgrbVar = null;
        if (ordinal == 4) {
            return new zzgra(zzgrbVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgrc.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgrf zzf() {
        zzgrf zzgrfVar = this.zzd;
        return zzgrfVar == null ? zzgrf.zzd() : zzgrfVar;
    }
}

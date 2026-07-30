package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgro extends zzgxr implements zzgzd {
    private static final zzgro zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgwj zzd = zzgwj.zzb;

    static {
        zzgro zzgroVar = new zzgro();
        zza = zzgroVar;
        zzgxr.zzbZ(zzgro.class, zzgroVar);
    }

    private zzgro() {
    }

    public static zzgrm zzb() {
        return (zzgrm) zza.zzaZ();
    }

    public static zzgro zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgro) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public static zzgzk zzg() {
        return zza.zzbN();
    }

    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzgro();
        }
        zzgrn zzgrnVar = null;
        if (ordinal == 4) {
            return new zzgrm(zzgrnVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgro.class) {
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
        return this.zzd;
    }
}

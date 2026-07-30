package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgue extends zzgxr implements zzgzd {
    private static final zzgue zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgwj zzd = zzgwj.zzb;

    static {
        zzgue zzgueVar = new zzgue();
        zza = zzgueVar;
        zzgxr.zzbZ(zzgue.class, zzgueVar);
    }

    private zzgue() {
    }

    public static zzguc zzb() {
        return (zzguc) zza.zzaZ();
    }

    public static zzgue zzd(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgue) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
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
            return new zzgue();
        }
        zzgud zzgudVar = null;
        if (ordinal == 4) {
            return new zzguc(zzgudVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgue.class) {
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

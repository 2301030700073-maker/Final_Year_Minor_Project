package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgub extends zzgxr implements zzgzd {
    private static final zzgub zza;
    private static volatile zzgzk zzb;
    private int zzc;

    static {
        zzgub zzgubVar = new zzgub();
        zza = zzgubVar;
        zzgxr.zzbZ(zzgub.class, zzgubVar);
    }

    private zzgub() {
    }

    public static zzgtz zzb() {
        return (zzgtz) zza.zzaZ();
    }

    public static zzgub zzd() {
        return zza;
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
            return zzgxr.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
        }
        if (ordinal == 3) {
            return new zzgub();
        }
        zzgua zzguaVar = null;
        if (ordinal == 4) {
            return new zzgtz(zzguaVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgub.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }
}

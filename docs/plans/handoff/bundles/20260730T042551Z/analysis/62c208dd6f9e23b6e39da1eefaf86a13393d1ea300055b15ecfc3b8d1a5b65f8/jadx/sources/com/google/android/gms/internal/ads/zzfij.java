package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfij extends zzgxr implements zzgzd {
    private static final zzfij zza;
    private static volatile zzgzk zzb;
    private zzgyd zzc = zzgxr.zzbK();

    static {
        zzfij zzfijVar = new zzfij();
        zza = zzfijVar;
        zzgxr.zzbZ(zzfij.class, zzfijVar);
    }

    private zzfij() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfig.class});
        }
        if (ordinal == 3) {
            return new zzfij();
        }
        zzfii zzfiiVar = null;
        if (ordinal == 4) {
            return new zzfih(zzfiiVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzfij.class) {
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

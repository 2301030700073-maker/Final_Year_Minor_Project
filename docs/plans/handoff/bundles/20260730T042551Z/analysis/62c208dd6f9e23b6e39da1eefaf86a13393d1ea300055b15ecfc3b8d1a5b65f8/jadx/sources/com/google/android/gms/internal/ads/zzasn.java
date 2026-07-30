package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzasn extends zzgxr implements zzgzd {
    private static final zzasn zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd = -1;

    static {
        zzasn zzasnVar = new zzasn();
        zza = zzasnVar;
        zzgxr.zzbZ(zzasn.class, zzasnVar);
    }

    private zzasn() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzasn();
        }
        zzato zzatoVar = null;
        if (ordinal == 4) {
            return new zzasm(zzatoVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzasn.class) {
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

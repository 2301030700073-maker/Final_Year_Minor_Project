package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgtc extends zzgxr implements zzgzd {
    private static final zzgtc zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgyd zzd = zzgxr.zzbK();

    static {
        zzgtc zzgtcVar = new zzgtc();
        zza = zzgtcVar;
        zzgxr.zzbZ(zzgtc.class, zzgtcVar);
    }

    private zzgtc() {
    }

    public static zzgsy zza() {
        return (zzgsy) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzgtc zzgtcVar, zzgta zzgtaVar) {
        zzgtaVar.getClass();
        zzgyd zzgydVar = zzgtcVar.zzd;
        if (!zzgydVar.zzc()) {
            zzgtcVar.zzd = zzgxr.zzbL(zzgydVar);
        }
        zzgtcVar.zzd.add(zzgtaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzgta.class});
        }
        if (ordinal == 3) {
            return new zzgtc();
        }
        zzgtb zzgtbVar = null;
        if (ordinal == 4) {
            return new zzgsy(zzgtbVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgtc.class) {
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

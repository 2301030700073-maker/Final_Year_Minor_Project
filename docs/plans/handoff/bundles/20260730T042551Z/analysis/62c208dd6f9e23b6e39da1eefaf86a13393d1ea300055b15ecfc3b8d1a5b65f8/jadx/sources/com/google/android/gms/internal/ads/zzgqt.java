package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgqt extends zzgxr implements zzgzd {
    private static final zzgqt zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzgqw zzd;
    private int zze;

    static {
        zzgqt zzgqtVar = new zzgqt();
        zza = zzgqtVar;
        zzgxr.zzbZ(zzgqt.class, zzgqtVar);
    }

    private zzgqt() {
    }

    public static zzgqr zzb() {
        return (zzgqr) zza.zzaZ();
    }

    public static zzgqt zzd() {
        return zza;
    }

    public static /* synthetic */ void zzh(zzgqt zzgqtVar, zzgqw zzgqwVar) {
        zzgqwVar.getClass();
        zzgqtVar.zzd = zzgqwVar;
        zzgqtVar.zzc |= 1;
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
            return new zzgqt();
        }
        zzgqs zzgqsVar = null;
        if (ordinal == 4) {
            return new zzgqr(zzgqsVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgqt.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgqw zzf() {
        zzgqw zzgqwVar = this.zzd;
        return zzgqwVar == null ? zzgqw.zzd() : zzgqwVar;
    }
}

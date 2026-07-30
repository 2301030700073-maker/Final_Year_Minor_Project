package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzasb extends zzgxr implements zzgzd {
    public static final /* synthetic */ int zza = 0;
    private static final zzasb zzb;
    private static volatile zzgzk zzc;
    private int zzd;
    private boolean zzf;
    private boolean zzg;
    private long zze = 100;
    private long zzh = 300;
    private long zzi = 1000;

    static {
        zzasb zzasbVar = new zzasb();
        zzb = zzasbVar;
        zzgxr.zzbZ(zzasb.class, zzasbVar);
    }

    private zzasb() {
    }

    public static zzasb zzb() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (ordinal == 3) {
            return new zzasb();
        }
        zzasa zzasaVar = null;
        if (ordinal == 4) {
            return new zzarz(zzasaVar);
        }
        if (ordinal == 5) {
            return zzb;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzc;
        if (zzgzkVar == null) {
            synchronized (zzasb.class) {
                zzgzkVar = zzc;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zzb);
                    zzc = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }
}

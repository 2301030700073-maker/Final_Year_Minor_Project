package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzasl extends zzgxr implements zzgzd {
    private static final zzasl zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd = -1;
    private int zze = 1000;
    private int zzf = 1000;

    static {
        zzasl zzaslVar = new zzasl();
        zza = zzaslVar;
        zzgxr.zzbZ(zzasl.class, zzaslVar);
    }

    private zzasl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            zzgxx zzgxxVar = zzate.zza;
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", "zze", zzgxxVar, "zzf", zzgxxVar});
        }
        if (ordinal == 3) {
            return new zzasl();
        }
        zzato zzatoVar = null;
        if (ordinal == 4) {
            return new zzask(zzatoVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzasl.class) {
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

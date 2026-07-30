package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhbh extends zzgxr implements zzgzd {
    private static final zzhbh zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private long zze;
    private zzgwj zzf = zzgwj.zzb;

    static {
        zzhbh zzhbhVar = new zzhbh();
        zza = zzhbhVar;
        zzgxr.zzbZ(zzhbh.class, zzhbhVar);
    }

    private zzhbh() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", zzhbg.zza, "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzhbh();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhbf(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhbh.class) {
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

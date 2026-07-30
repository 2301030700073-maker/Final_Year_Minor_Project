package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhcg extends zzgxr implements zzgzd {
    private static final zzhcg zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzgwj zze;
    private zzgwj zzf;

    static {
        zzhcg zzhcgVar = new zzhcg();
        zza = zzhcgVar;
        zzgxr.zzbZ(zzhcg.class, zzhcgVar);
    }

    private zzhcg() {
        zzgwj zzgwjVar = zzgwj.zzb;
        this.zze = zzgwjVar;
        this.zzf = zzgwjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzhcg();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhcf(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhcg.class) {
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

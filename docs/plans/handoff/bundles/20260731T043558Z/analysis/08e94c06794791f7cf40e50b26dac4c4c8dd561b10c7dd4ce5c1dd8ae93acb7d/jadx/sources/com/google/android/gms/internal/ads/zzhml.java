package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhml extends zzhwo implements zzhya {
    private static final zzhml zzf;
    private static volatile zzhyh zzg;
    private int zza;
    private int zzb;
    private zzhmh zzc;
    private zzhvi zzd;
    private zzhvi zze;

    static {
        zzhml zzhmlVar = new zzhml();
        zzf = zzhmlVar;
        zzhwo.zzbu(zzhml.class, zzhmlVar);
    }

    private zzhml() {
        zzhvi zzhviVar = zzhvi.zzb;
        this.zzd = zzhviVar;
        this.zze = zzhviVar;
    }

    public static zzhml zze(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhml) zzhwo.zzbT(zzf, zzhviVar, zzhvyVar);
    }

    public static zzhmk zzg() {
        return (zzhmk) zzf.zzbn();
    }

    public static zzhml zzh() {
        return zzf;
    }

    public static zzhyh zzi() {
        return zzf.zzbd();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhmh zzb() {
        zzhmh zzhmhVar = this.zzc;
        return zzhmhVar == null ? zzhmh.zze() : zzhmhVar;
    }

    public final zzhvi zzc() {
        return this.zzd;
    }

    public final zzhvi zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzf, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzhml();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhmk(bArr);
        }
        if (ordinal == 5) {
            return zzf;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzg;
        if (zzhyhVar == null) {
            synchronized (zzhml.class) {
                zzhyhVar = zzg;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzf);
                    zzg = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzj(int i) {
        this.zzb = 0;
    }

    final /* synthetic */ void zzk(zzhmh zzhmhVar) {
        zzhmhVar.getClass();
        this.zzc = zzhmhVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzl(zzhvi zzhviVar) {
        this.zzd = zzhviVar;
    }

    final /* synthetic */ void zzm(zzhvi zzhviVar) {
        this.zze = zzhviVar;
    }
}

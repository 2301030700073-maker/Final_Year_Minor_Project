package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhiz extends zzhwo implements zzhya {
    private static final zzhiz zzd;
    private static volatile zzhyh zze;
    private int zza;
    private zzhjd zzb;
    private zzhks zzc;

    static {
        zzhiz zzhizVar = new zzhiz();
        zzd = zzhizVar;
        zzhwo.zzbu(zzhiz.class, zzhizVar);
    }

    private zzhiz() {
    }

    public static zzhiz zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhiz) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhiy zzd() {
        return (zzhiy) zzd.zzbn();
    }

    public final zzhjd zza() {
        zzhjd zzhjdVar = this.zzb;
        return zzhjdVar == null ? zzhjd.zzd() : zzhjdVar;
    }

    public final zzhks zzb() {
        zzhks zzhksVar = this.zzc;
        return zzhksVar == null ? zzhks.zzg() : zzhksVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhiz();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhiy(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhiz.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(zzhjd zzhjdVar) {
        zzhjdVar.getClass();
        this.zzb = zzhjdVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzg(zzhks zzhksVar) {
        zzhksVar.getClass();
        this.zzc = zzhksVar;
        this.zza |= 2;
    }
}

package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjz extends zzhwo implements zzhya {
    private static final zzhjz zzd;
    private static volatile zzhyh zze;
    private int zza;
    private zzhkb zzb;
    private int zzc;

    static {
        zzhjz zzhjzVar = new zzhjz();
        zzd = zzhjzVar;
        zzhwo.zzbu(zzhjz.class, zzhjzVar);
    }

    private zzhjz() {
    }

    public static zzhjz zzb(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhjz) zzhwo.zzbT(zzd, zzhviVar, zzhvyVar);
    }

    public static zzhjy zzc() {
        return (zzhjy) zzd.zzbn();
    }

    public final zzhkb zza() {
        zzhkb zzhkbVar = this.zzb;
        return zzhkbVar == null ? zzhkb.zzc() : zzhkbVar;
    }

    final /* synthetic */ void zzd(zzhkb zzhkbVar) {
        zzhkbVar.getClass();
        this.zzb = zzhkbVar;
        this.zza |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0000\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0003\u000b", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzhjz();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhjy(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzhjz.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}

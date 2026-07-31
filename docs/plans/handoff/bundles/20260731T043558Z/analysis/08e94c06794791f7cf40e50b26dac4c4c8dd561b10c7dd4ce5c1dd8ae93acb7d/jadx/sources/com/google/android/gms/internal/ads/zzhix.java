package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhix extends zzhwo implements zzhya {
    private static final zzhix zze;
    private static volatile zzhyh zzf;
    private int zza;
    private int zzb;
    private zzhjb zzc;
    private zzhkq zzd;

    static {
        zzhix zzhixVar = new zzhix();
        zze = zzhixVar;
        zzhwo.zzbu(zzhix.class, zzhixVar);
    }

    private zzhix() {
    }

    public static zzhix zzd(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhix) zzhwo.zzbT(zze, zzhviVar, zzhvyVar);
    }

    public static zzhiw zze() {
        return (zzhiw) zze.zzbn();
    }

    public static zzhyh zzg() {
        return zze.zzbd();
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhjb zzb() {
        zzhjb zzhjbVar = this.zzc;
        return zzhjbVar == null ? zzhjb.zze() : zzhjbVar;
    }

    public final zzhkq zzc() {
        zzhkq zzhkqVar = this.zzd;
        return zzhkqVar == null ? zzhkq.zzg() : zzhkqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhix();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhiw(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhix.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzh(zzhjb zzhjbVar) {
        zzhjbVar.getClass();
        this.zzc = zzhjbVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzi(zzhkq zzhkqVar) {
        zzhkqVar.getClass();
        this.zzd = zzhkqVar;
        this.zza |= 2;
    }
}

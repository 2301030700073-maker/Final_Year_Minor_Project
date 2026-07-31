package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjb extends zzhwo implements zzhya {
    private static final zzhjb zze;
    private static volatile zzhyh zzf;
    private int zza;
    private int zzb;
    private zzhjf zzc;
    private zzhvi zzd = zzhvi.zzb;

    static {
        zzhjb zzhjbVar = new zzhjb();
        zze = zzhjbVar;
        zzhwo.zzbu(zzhjb.class, zzhjbVar);
    }

    private zzhjb() {
    }

    public static zzhja zzd() {
        return (zzhja) zze.zzbn();
    }

    public static zzhjb zze() {
        return zze;
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzhjf zzb() {
        zzhjf zzhjfVar = this.zzc;
        return zzhjfVar == null ? zzhjf.zzc() : zzhjfVar;
    }

    public final zzhvi zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhjb();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhja(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzhjb.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zzg(zzhjf zzhjfVar) {
        zzhjfVar.getClass();
        this.zzc = zzhjfVar;
        this.zza |= 1;
    }

    final /* synthetic */ void zzh(zzhvi zzhviVar) {
        this.zzd = zzhviVar;
    }
}

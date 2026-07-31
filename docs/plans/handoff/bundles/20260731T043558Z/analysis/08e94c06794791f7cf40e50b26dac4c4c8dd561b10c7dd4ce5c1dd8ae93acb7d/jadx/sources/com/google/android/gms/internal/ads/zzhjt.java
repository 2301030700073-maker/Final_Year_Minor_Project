package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjt extends zzhwo implements zzhya {
    private static final zzhjt zzc;
    private static volatile zzhyh zzd;
    private int zza;
    private int zzb;

    static {
        zzhjt zzhjtVar = new zzhjt();
        zzc = zzhjtVar;
        zzhwo.zzbu(zzhjt.class, zzhjtVar);
    }

    private zzhjt() {
    }

    public static zzhjt zzc(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhjt) zzhwo.zzbT(zzc, zzhviVar, zzhvyVar);
    }

    public static zzhjs zzd() {
        return (zzhjs) zzc.zzbn();
    }

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzb", "zza"});
        }
        if (ordinal == 3) {
            return new zzhjt();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzhjs(bArr);
        }
        if (ordinal == 5) {
            return zzc;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzd;
        if (zzhyhVar == null) {
            synchronized (zzhjt.class) {
                zzhyhVar = zzd;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzc);
                    zzd = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }

    final /* synthetic */ void zze(int i) {
        this.zza = i;
    }
}

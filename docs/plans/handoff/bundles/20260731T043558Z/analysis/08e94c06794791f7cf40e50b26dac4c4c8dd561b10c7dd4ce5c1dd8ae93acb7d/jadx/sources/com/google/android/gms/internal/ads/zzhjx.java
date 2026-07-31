package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzhjx extends zzhwo implements zzhya {
    private static final zzhjx zza;
    private static volatile zzhyh zzb;

    static {
        zzhjx zzhjxVar = new zzhjx();
        zza = zzhjxVar;
        zzhwo.zzbu(zzhjx.class, zzhjxVar);
    }

    private zzhjx() {
    }

    public static zzhjx zza(zzhvi zzhviVar, zzhvy zzhvyVar) throws zzhxd {
        return (zzhjx) zzhwo.zzbT(zza, zzhviVar, zzhvyVar);
    }

    public static zzhjx zzb() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        byte[] bArr = null;
        if (ordinal == 2) {
            return zzbv(zza, "\u0000\u0000", null);
        }
        if (ordinal == 3) {
            return new zzhjx();
        }
        if (ordinal == 4) {
            return new zzhjw(bArr);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzb;
        if (zzhyhVar == null) {
            synchronized (zzhjx.class) {
                zzhyhVar = zzb;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zza);
                    zzb = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
